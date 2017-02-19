#Evolutionary analysis NAD

- [x]  Include NR-input
- [x] Update NT5 affinity according to publication by Andrey.
- [x] Include NAD-inhibition of NamPRT in both the evolutionary model and the human model
- [x]  Adjusted scaling such that fluxes are in the range of fluxes measured in innitial experiments
- [x]  Adjusted NAD-import rates based on literature for E. coli, cell lines and human vitamine uptake suggestions, NAD-import rates calculated based on the  latter are too low do only allow very low growth rates.

##Comment to figures  of commit  7cc622f

All scans done with Nam-import rate of 1e-05 mmol/ls and 100 (?) U  NMNAT and NamPRT all other enzymes 10 U model commit ....

###Influence of amount of NAD-consuming enzymes: [NADconsumptionscan.pdf](NADconsumptionscan.pdf) 

NAD-concentration and consumption with and without NNMT with different concentration of NAD-consuming enzymes that are not inhibited by Nam (NC)

Result interpretation:

- The reduction of the NAD-concentration due to NNMT is lower the higher the expression of NCs is and the faster cells grow

- at high devision rates the advantage of NNMT for Sirt-like NAD-consumption is higher for high NC-activity 

- at low cell devision rates the advantage of NNMT for Sirt-like NAD-consumption is higher for low NC-activity

- NAD-concentration and -consumption is basically constant at different cell devision rates

###Influence of NNMT: [NamPRTNNMT.pdf](NamPRTNNMT.pdf)

scans done with 50 U NC

- NAD-consumption and concentration are more or less independent of cell devision rate with NNMT 

- without NNMT there is a trade of between NAD-concentration and -consumption rates and both ate dependent on cell devision rates

###Influence of km NamPRT: [NAMPRT_kmscan.pdf](NAMPRT_kmscan.pdf)

- without NNMT NAD-consumption rates and -concentrations do only change very little upon change of Km of NAMPRT --> there is no advantage due to missing competition

- with NNMT NAD-consumption is increasing with affinity increase, NAD-concentration too

- at  low cell devision rates NNMT is always advantageous (at given parameters of other enzymes)  at high cell devision rates NNMT is only advantageous if NamPRT has a very high affinity

-> for species that have high devision rate like bacteria the gain is very low and the initial disadvantage is high for both NAD-consumption and NAD-concentration, with low devision rate there is little or no disadvantage in terms of NAD-consumption and little for NAD-concentration this situations is even more extreme with increasing activity of NAD-consuming enzymes that are not inhibited by Nam, additional gain, independence of cell devision rates (of e.g. different tissues or at different developmental stages)

NAMPT_NADA.eps :