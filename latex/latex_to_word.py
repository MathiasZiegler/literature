#!/usr/bin/env python3

import sys
import re
import subprocess


try:
	fn = sys.argv[1]
	if fn.startswith('-h'):
		raise IndexError
except IndexError:
	print('Call me with the main tex file as argument.', file=sys.stderr)
	print('python3 latex_to_word.py myfile.tex', file=sys.stderr)
	print('\nNB!', file=sys.stderr)
	print('Libre Office must be installed and NOT be open!', file=sys.stderr)
	print('Shared memory under /run/shm must be available!', file=sys.stderr)
	sys.exit()

if fn.endswith('.'):
	fn += 'tex'
if not fn.endswith('.tex'):
	fn += '.tex'

tex = open(fn).read()

while True:
	try:
		idx = tex.index(r'\input{')
	except ValueError:
		break

	endidx = tex.index('}', idx)
	newfn = tex[idx+7:endidx]

	if not newfn.endswith('.tex'):
		newfn += '.tex'

	newtex = open(newfn).read()

	tex = tex[:idx] + newtex + tex[endidx+1:]

out = ['''<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
<title>Thesis</title>
<style type="text/css">
.todo {color: red; font-weight: bold;}
p {text-align: justify;}
</style>
</head>
<body>''']
active = False

first_replacements = {
	'~': '&nbsp;',
	'<': '&lt;',
	'>': '&gt;'}

hard_replacements = {
	r'\newpage': '',
	r'\S': '§',
	r'$\beta$': 'β',
	r'$\mu$': 'µ',
	r'$\Delta$': 'Δ',
	r'\,': '&thinsp;'}

for key in first_replacements:
	tex = tex.replace(key, first_replacements[key])

for key in hard_replacements:
	tex = tex.replace(key, hard_replacements[key])

re_comment = re.compile(r'[^\\]%')

tex = re.sub(r'\\cite\{([^\}]+)\}', r'(\1)', tex)

known_environments = {'figure'}
environment = None
figure_labels = {}
table_labels = {}
figure_counter = 1
table_counter = 1

lines_to_skip = [r'\noindent', r'\vspace', r'\centering', r'\bibliography']

lines = iter(tex.split('\n'))

for line in lines:
	if not active:
		# Let's only start after table of contents
		if line.startswith(r'\begin{document}'):
			active = True
		continue

	if line.startswith(r'\end{document}'):
		break

	has_comment = re_comment.search(line)
	if has_comment is not None:
		pos = has_comment.start()
		line = line[:pos+1]

	line = line.strip()
	if not line or line.startswith('%'):
		continue

	if line.startswith(r'\begin'):
		env = re.search(r'\\begin\{([^\}]+)\}', line).group(1)
		if env not in known_environments:
			print('ERROR: Environment "{}" not known!'.format(env), file=sys.stderr)
			sys.exit()
		environment = env
		continue

	if line.startswith(r'\end'):
		env = re.search(r'\\end\{([^\}]+)\}', line).group(1)
		if env != environment:
			print('ERROR: Environment "{}" closed although "{}" was open!'.format(env, environment), file=sys.stderr)
			sys.exit()
		environment = None
		continue

	elif environment == 'figure':
		if r'\includegraphics' in line:
			continue
		elif r'\caption' in line:
			if not line.endswith('}'):
				line += next(lines)
			caption = re.search(r'\w*\\caption\{(.*)$', line).group(1)[:-1].replace(r'\\', '<br>')
			line = '{}'.format(caption)
		elif r'\label' in line:
			label = 'LABEL{}LABEL'.format(re.search(r'\{([^\}]+)\}', line).group(1))
			figure_labels[label] = str(figure_counter)
			figure_counter += 1
			continue

	skip = False
	for ignore in lines_to_skip:
		if ignore in line:
			skip = True
			break
	if skip:
		continue


	if r'_' in line:
		line = re.sub(r'_\{([^\}]+)\}', r'<sub>\1</sub>', line)
	if r'^' in line:
		line = re.sub(r'\^\{([^\}]+)\}', r'<sup>\1</sup>', line)
	if '$' in line:
		line = re.sub(r'\$([^\$]+)\$', r'<i>\1</i>', line)
	if r'\%' in line:
		line = line.replace(r'\%', '%')

	counter = 0
	while '\\' in line and counter <= 10:
		if r'\bfseries' in line:
			line = line.replace(r'{\huge\sffamily\bfseries ', '<h1>').replace(r' \par}', '</h1>')
		if r'\textbf' in line:
			line = re.sub(r'\\textbf\{([^\}\{\\]+)\}', r'<b>\1</b>', line)
		if r'\textit' in line:
			line = re.sub(r'\\textit\{([^\}\{\\]+)\}', r'<i>\1</i>', line)
		if r'\textsc' in line:
			line = re.sub(r'\\textsc\{([^\}\{\\]+)\}', lambda match: match.group(1).upper(), line)
		if r'\todo' in line:
			line = re.sub(r'\\todo\{([^\}\{\\]+)\}', r'<span class="todo">\1</span>', line)
			line = re.sub(r'\\todo\[author=([^\]\{\\]+)\]\{([^\}\{\\]+)\}', r'<span class="todo"><i>\1</i>: \2</span>', line)
		if r'\subsection' in line:
			line = re.sub(r'\\subsection[*]?\{([^\}\{\\]+)\}', r'<h3>\1</h3>', line)
		if r'\section' in line:
			line = re.sub(r'\\section[*]?\{([^\}\{\\]+)\}', r'<h2>\1</h2>', line)
		if r'\ref' in line:
			line = re.sub(r'\\ref\{([^\}\{\\]+)\}', r'LABEL\1LABEL', line)
		if r'\url' in line:
			line = re.sub(r'\\url\{([^\}\{\\]+)\}', r'<a href="\1">\1</a>', line)
		if r'\href' in line:
			line = re.sub(r'\\href\{([^\}\{\\]+)\}\{([^\}\{\\]+)\}', r'<a href="\1">\2</a>', line)
		if r'\textsuperscript' in line:
			line = re.sub(r'\\textsuperscript\{([^\}]+)\}', r'<sup>\1</sup>', line)
		if r'\textsubscript' in line:
			line = re.sub(r'\\textsubscript\{([^\}]+)\}', r'<sub>\1</sub>', line)

		counter += 1

	if counter >= 10:
		print('Counter exceeded 10 in the following line:', file=sys.stderr)
		print(line, file=sys.stderr)

	out.append(line)

out.append('</body>\n</html>')

for i in range(len(out)):
	if out[i][:2] not in {'<!', '<h', '<p', '</', '<t', '<d', '<i'}:
		out[i] = '<p>{}</p>'.format(out[i])
	if 'LABEL' in out[i]:
		for label in figure_labels:
			out[i] = out[i].replace(label, figure_labels[label])
		for label in table_labels:
			out[i] = out[i].replace(label, table_labels[label])

open('/run/shm/manuscript.html', 'w').write('\n'.join(out))

subprocess.run(['lowriter', '--headless', '--convert-to', 'docx', '--outdir', '.', '/run/shm/manuscript.html'])
