<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.25 (Build 198) (http://www.copasi.org) at 2018-12-12T13:32:14Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="25" versionDevel="198" copasiSourcesModified="0">
  <ListOfFunctions>
    <Function key="Function_6" name="Constant flux (irreversible)" type="PreDefined" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-08-21T19:04:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        v
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_49" name="v" order="0" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_13" name="Mass action (irreversible)" type="MassAction" reversible="false">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_13">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000041" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for first order irreversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does not include any reverse process that creates the reactants from the products. The change of a product quantity is proportional to the quantity of one reactant.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_80" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_81" name="substrate" order="1" role="substrate"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_14" name="Mass action (reversible)" type="MassAction" reversible="true">
      <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
   <rdf:Description rdf:about="#Function_14">
   <CopasiMT:is rdf:resource="urn:miriam:obo.sbo:SBO:0000042" />
   </rdf:Description>
   </rdf:RDF>
      </MiriamAnnotation>
      <Comment>
        <body xmlns="http://www.w3.org/1999/xhtml">
<b>Mass action rate law for reversible reactions</b>
<p>
Reaction scheme where the products are created from the reactants and the change of a product quantity is proportional to the product of reactant activities. The reaction scheme does include a reverse process that creates the reactants from the products.
</p>
</body>
      </Comment>
      <Expression>
        k1*PRODUCT&lt;substrate_i>-k2*PRODUCT&lt;product_j>
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_69" name="k1" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_68" name="substrate" order="1" role="substrate"/>
        <ParameterDescription key="FunctionParameter_78" name="k2" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_79" name="product" order="3" role="product"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_40" name="TwosubstratesMMs2constant" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:32:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*turnover*s1*s2*scaling/(Km+s1)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_264" name="E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_263" name="turnover" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_262" name="s1" order="2" role="substrate"/>
        <ParameterDescription key="FunctionParameter_261" name="s2" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_250" name="scaling" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_265" name="Km" order="5" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_41" name="MM with ET and scaling" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T16:42:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*kcat*S/(Km+S)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_271" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_270" name="scaling" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_269" name="kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_268" name="S" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_267" name="Km" order="4" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_42" name="Competitie inhibition two substrates s2 const scaling" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T15:28:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        E_T*scaling*(kcat_A*A/Km_A-kcat_PA*PA/Km_PA)/(1+A/Km_A+B/Km_B+PA/Km_PA+PB/Km_PB)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_275" name="E_T" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_274" name="scaling" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_273" name="kcat_A" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_272" name="A" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_266" name="Km_A" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_276" name="kcat_PA" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_277" name="PA" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_278" name="Km_PA" order="7" role="constant"/>
        <ParameterDescription key="FunctionParameter_279" name="B" order="8" role="modifier"/>
        <ParameterDescription key="FunctionParameter_280" name="Km_B" order="9" role="constant"/>
        <ParameterDescription key="FunctionParameter_281" name="PB" order="10" role="modifier"/>
        <ParameterDescription key="FunctionParameter_282" name="Km_PB" order="11" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_43" name="Product inhibition scaling" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:04:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*S/(Km+S+Km*I/Ki)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_294" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_293" name="scaling" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_292" name="Kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_291" name="S" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_290" name="Km" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_289" name="I" order="5" role="product"/>
        <ParameterDescription key="FunctionParameter_288" name="Ki" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_44" name="Product inhibition two susbtrates s2 const scaling" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T09:06:55Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*S1*S2/((Km+S1)*(1+I/Ki))
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_296" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_295" name="scaling" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_283" name="Kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_284" name="S1" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_285" name="S2" order="4" role="substrate"/>
        <ParameterDescription key="FunctionParameter_286" name="Km" order="5" role="constant"/>
        <ParameterDescription key="FunctionParameter_287" name="I" order="6" role="product"/>
        <ParameterDescription key="FunctionParameter_297" name="Ki" order="7" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
    <Function key="Function_45" name="Competitive inhibition scaling" type="UserDefined" reversible="unspecified">
      <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Function_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:04:09Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        ET*scaling*Kcat*S/(Km+S+Km*I/Ki)
      </Expression>
      <ListOfParameterDescriptions>
        <ParameterDescription key="FunctionParameter_305" name="ET" order="0" role="constant"/>
        <ParameterDescription key="FunctionParameter_304" name="scaling" order="1" role="constant"/>
        <ParameterDescription key="FunctionParameter_303" name="Kcat" order="2" role="constant"/>
        <ParameterDescription key="FunctionParameter_302" name="S" order="3" role="substrate"/>
        <ParameterDescription key="FunctionParameter_301" name="Km" order="4" role="constant"/>
        <ParameterDescription key="FunctionParameter_300" name="I" order="5" role="modifier"/>
        <ParameterDescription key="FunctionParameter_299" name="Ki" order="6" role="constant"/>
      </ListOfParameterDescriptions>
    </Function>
  </ListOfFunctions>
  <Model key="Model_0" name="NAD Phylogeny" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mmol" type="deterministic" avogadroConstant="6.0221417899999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#"
   xmlns:vCard="http://www.w3.org/2001/vcard-rdf/3.0#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:29:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <dcterms:creator>
      <rdf:Description>
        <vCard:N>
          <rdf:Description>
            <vCard:Family>Heiland</vCard:Family>
            <vCard:Given>Ines</vCard:Given>
          </rdf:Description>
        </vCard:N>
        <vCard:ORG>
          <rdf:Description>
            <vCard:Orgname>UiT Arctic University of Norway</vCard:Orgname>
          </rdf:Description>
        </vCard:ORG>
      </rdf:Description>
    </dcterms:creator>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="Copartment_NamPT" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_1">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T15:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
      <Compartment key="Compartment_2" name="Compartment_NADA" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Compartment_2">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T15:46:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_27" name="Gln" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_27">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_28" name="DNA_damage" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_28">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_29" name="DNA_ADPR" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_29">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_30" name="NADbound" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_30">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T15:14:14Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_31" name="H3_ac" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_32" name="H3_deac" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_32">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="Glu" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_33">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="NR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:36:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="Pi" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_35">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:36:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="NAR_copy" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="NAM_copy" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="NaAD" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="1-methyl-NAM" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="H2O" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="PPi" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_41">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="AMP" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_42">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="NMN" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:28:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="NA" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_44">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="NaMN" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="ADP" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_46">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="SAM" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="SAH" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_48">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="NAM" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_49">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="NAD" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_50">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="NAR" simulationType="reactions" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_51">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="PRPP" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="ATP" simulationType="fixed" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_53">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Gln" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_54">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="DNA_damage" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="DNA_ADPR" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_56">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-18T13:28:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="NADbound" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T15:14:15Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="H3_ac" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="H3_deac" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:46:50Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="Glu" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:54Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="NR" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:36:27Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="Pi" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_62">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:36:42Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="NAR_copy" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_63">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="NAM_copy" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_65" name="NaAD" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_65">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_66" name="1-methyl-NAM" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_67" name="H2O" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:52Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_68" name="PPi" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:26Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_69" name="AMP" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_69">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_70" name="NMN" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_70">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:28:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_71" name="NA" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_71">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_72" name="NaMN" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_72">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_73" name="ADP" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_73">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:06Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_74" name="SAM" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_74">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:44Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_75" name="SAH" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_75">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:45:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_76" name="NAM" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_76">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:00:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_77" name="NAD" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_77">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:28Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_78" name="NAR" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_78">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T13:51:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_79" name="PRPP" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_79">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:02:38Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_80" name="ATP" simulationType="fixed" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_80">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T15:01:59Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
      <Metabolite key="Metabolite_81" name="Nam_ex" simulationType="reactions" compartment="Compartment_2" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Metabolite_81">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T15:23:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_0" name="scaling" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:42:49Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_3" name="celldivision_compartment_NamPT" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_3">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-14T13:12:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_4" name="celldivision_compartment_NADA" simulationType="assignment" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_4">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-14T13:12:34Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue>
        </Expression>
      </ModelValue>
      <ModelValue key="ModelValue_5" name="Nam transporter" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_5">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2017-11-13T16:06:18Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_6" name="Km NamPT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_6">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T18:44:46Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_7" name="Kcat NamPT" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_7">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-08T18:44:16Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_8" name="cell devision all" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#ModelValue_8">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2018-06-14T14:31:03Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfReactions>
      <Reaction key="Reaction_23" name="NMN-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_23">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5111" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_24" name="NAPRT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_24">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:6224784"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:35:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:2.4.2.11"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
          <Product metabolite="Metabolite_46" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5112" name="E_T" value="10"/>
          <Constant key="Parameter_5104" name="turnover" value="3.3"/>
          <Constant key="Parameter_5109" name="scaling" value="0.001"/>
          <Constant key="Parameter_5114" name="Km" value="0.00015"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5112"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5104"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_5109"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_5114"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_25" name="NMNAT1-NMN[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_25">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:33:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_45" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5115" name="E_T" value="100"/>
          <Constant key="Parameter_5116" name="scaling" value="0.001"/>
          <Constant key="Parameter_5117" name="kcat_A" value="53.8"/>
          <Constant key="Parameter_5122" name="Km_A" value="0.0223"/>
          <Constant key="Parameter_5119" name="kcat_PA" value="129.1"/>
          <Constant key="Parameter_5121" name="Km_PA" value="0.059"/>
          <Constant key="Parameter_5120" name="Km_B" value="0.0677"/>
          <Constant key="Parameter_5118" name="Km_PB" value="0.502"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_5115"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_5116"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_5117"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_5122"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_5119"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_5121"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5120"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_5118"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_26" name="NMNAT1-NaMN[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_26">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>values used</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17402747"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/0003-9861(67)90262-7"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Keq</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:16118205"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T14:33:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:2.7.7.1"/>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:2.7.7.18"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_38" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_43" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5125" name="E_T" value="100"/>
          <Constant key="Parameter_5124" name="scaling" value="0.001"/>
          <Constant key="Parameter_5123" name="kcat_A" value="42.9"/>
          <Constant key="Parameter_5180" name="Km_A" value="0.0677"/>
          <Constant key="Parameter_5185" name="kcat_PA" value="103.8"/>
          <Constant key="Parameter_5142" name="Km_PA" value="0.502"/>
          <Constant key="Parameter_5179" name="Km_B" value="22.3"/>
          <Constant key="Parameter_5182" name="Km_PB" value="0.059"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_5125"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_5124"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_5123"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_5180"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_5185"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_5142"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_5179"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_5182"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_27" name="NADS[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_27">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4340699"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T14:36:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:6.3.5.1"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_38" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_53" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_27" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_33" stoichiometry="1"/>
          <Product metabolite="Metabolite_50" stoichiometry="1"/>
          <Product metabolite="Metabolite_41" stoichiometry="1"/>
          <Product metabolite="Metabolite_42" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5128" name="E_T" value="10"/>
          <Constant key="Parameter_5130" name="turnover" value="21"/>
          <Constant key="Parameter_5131" name="scaling" value="0.001"/>
          <Constant key="Parameter_5181" name="Km" value="0.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5128"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5130"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_38"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_53"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_5131"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_5181"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_28" name="NT5-NMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_28">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Km</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26385918"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T15:21:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          KM and Kcat for CN-III
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_43" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5127" name="ET" value="10"/>
          <Constant key="Parameter_5126" name="scaling" value="0.001"/>
          <Constant key="Parameter_5129" name="kcat" value="0.5"/>
          <Constant key="Parameter_5132" name="Km" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5127"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_5126"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_5129"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_43"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_5132"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_29" name="PNP-NR[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_29">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/S0163-7258(00)00097-8"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>original work calf Km and kcat calculated with MW of 92kDa</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9030766"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:54:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_5141" name="E_T" value="10"/>
          <Constant key="Parameter_5138" name="turnover" value="40"/>
          <Constant key="Parameter_5137" name="scaling" value="0.001"/>
          <Constant key="Parameter_5139" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_5141"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_5138"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_5137"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_5139"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_30" name="NNMT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_30">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Km from recombinant human enzyme, similar to mouse Km</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:8182091"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>turnover calculated from enzyme 1300 fold purified from porcine liver, Km=0.83</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:2963591"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T14:29:45Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:brenda:441255"/>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:2.1.1.1"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_47" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_39" stoichiometry="1"/>
          <Product metabolite="Metabolite_48" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5134" name="ET" value="0"/>
          <Constant key="Parameter_5133" name="scaling" value="0.001"/>
          <Constant key="Parameter_5135" name="Kcat" value="8.1"/>
          <Constant key="Parameter_5140" name="Km" value="0.4"/>
          <Constant key="Parameter_5136" name="Ki" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_5134"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_5133"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_5135"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_5140"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_39"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_5136"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_31" name="Nam-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_31">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_5021" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_32" name="NT5-NaMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_32">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Km</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26385918"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Km and Kcat from CN-II
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_45" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5026" name="ET" value="10"/>
          <Constant key="Parameter_5023" name="scaling" value="0.001"/>
          <Constant key="Parameter_5024" name="kcat" value="2.8"/>
          <Constant key="Parameter_5027" name="Km" value="3.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5026"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_5023"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_5024"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_45"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_5027"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_33" name="SIRT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_33">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1021/bi049592e"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:44:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_31" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
          <Product metabolite="Metabolite_32" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5015" name="ET" value="10"/>
          <Constant key="Parameter_5022" name="scaling" value="0.001"/>
          <Constant key="Parameter_5020" name="Kcat" value="0.67"/>
          <Constant key="Parameter_5019" name="Km" value="0.029"/>
          <Constant key="Parameter_5025" name="Ki" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_5015"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_5022"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_5020"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_31"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_5019"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_5025"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_34" name="NAD-consumption without Nam inhibition[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_34">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T14:33:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5018" name="ET" value="0"/>
          <Constant key="Parameter_5016" name="scaling" value="0.001"/>
          <Constant key="Parameter_5017" name="kcat" value="1"/>
          <Constant key="Parameter_5177" name="Km" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_5018"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_5016"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_5017"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_5177"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_35" name="NADA[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_35">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Km 0.033 and Kcat 8.5</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3036844"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>used values</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:22229411"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:29:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:ec-code:3.5.1.19"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_40" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_5178" name="ET" value="0"/>
          <Constant key="Parameter_4879" name="scaling" value="0.001"/>
          <Constant key="Parameter_4878" name="Kcat" value="0.69"/>
          <Constant key="Parameter_4877" name="Km" value="0.009"/>
          <Constant key="Parameter_4876" name="Ki" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_5178"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_4879"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_4878"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_4877"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_4876"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_36" name="NAM import[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_36">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          cell size HeLa 3e-12 l
fibro blast 1e-12l

maximal E. coli uptake NA http://www.jbc.org/content/248/14/5144.full.pdf 630 molceules per cell and s 

thus approx. 1 miktoM/ls

 HeLa (epithelial; 8.2 ± 0.3 fmol/10 min), 
NIH-3T3 cells : The apparent Km of NAD transport was ∼190 μM while the Vmax was 429 pmol/well/10 min. 
http://www.jbc.org/content/283/10/6367.full  

(1.2e6 cells per well according to thermo fisher cell culture specifications)

thus approx. 0.2 mikroM/s

15mg uptake per 60kg body = 2.5e-8 mmol/ls
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_49" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4875" name="k1" value="100"/>
          <Constant key="Parameter_4874" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="ConcentrationPerTime" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_37" name="NAMPT[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_37">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T08:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_49" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_52" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
          <Product metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4873" name="ET" value="100"/>
          <Constant key="Parameter_4872" name="scaling" value="0.001"/>
          <Constant key="Parameter_4871" name="Kcat" value="0.0077"/>
          <Constant key="Parameter_4870" name="Km" value="5e-06"/>
          <Constant key="Parameter_4869" name="Ki" value="0.0021"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Parameter_4873"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_4872"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_49"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_4869"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_38" name="NAR-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_38">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4868" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_39" name="NA-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_39">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4867" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_44"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_40" name="NAD-binding[0]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_40">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-09T15:18:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_30" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4866" name="k1" value="1"/>
          <Constant key="Parameter_4865" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4866"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4865"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_30"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_41" name="NRK1-NaMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_41">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Vmax of purified anzyme and Km for NR</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19027704"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-30T10:16:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol for NMN
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_45" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4864" name="ET" value="10"/>
          <Constant key="Parameter_4863" name="scaling" value="0.001"/>
          <Constant key="Parameter_4862" name="kcat" value="0.23"/>
          <Constant key="Parameter_4861" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4864"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4863"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4862"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4861"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_42" name="PNP-NAR[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_42">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/S0163-7258(00)00097-8"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>original work calf Km and kcat calculated with MW of 92kDa</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9030766"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:54:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Parameter have to be adjusted for NAR...currently NR affinities are used
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_51" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_35" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_44" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4860" name="E_T" value="10"/>
          <Constant key="Parameter_4859" name="turnover" value="40"/>
          <Constant key="Parameter_4858" name="scaling" value="0.001"/>
          <Constant key="Parameter_4857" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4860"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4859"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_51"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_35"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4858"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4857"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_43" name="NR-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_43">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4856" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_44" name="NRK1-NMN[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_44">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Vmax of purified anzyme and Km for NR</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19027704"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-30T10:16:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_34" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_43" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_51" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4855" name="ET" value="10"/>
          <Constant key="Parameter_4854" name="scaling" value="0.001"/>
          <Constant key="Parameter_4853" name="kcat" value="0.23"/>
          <Constant key="Parameter_4852" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4855"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4854"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4853"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_34"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4852"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_45" name="NMN-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_45">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4851" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_46" name="NAPRT[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_46">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:6224784" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:35:20Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:2.4.2.11" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
          <Product metabolite="Metabolite_73" stoichiometry="1"/>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4850" name="E_T" value="10"/>
          <Constant key="Parameter_4849" name="turnover" value="3.3"/>
          <Constant key="Parameter_4848" name="scaling" value="0.001"/>
          <Constant key="Parameter_4847" name="Km" value="0.00015"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4850"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4849"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4848"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4847"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_47" name="NMNAT1-NMN[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_47">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:33:17Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_72" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4846" name="E_T" value="100"/>
          <Constant key="Parameter_4845" name="scaling" value="0.001"/>
          <Constant key="Parameter_4844" name="kcat_A" value="53.8"/>
          <Constant key="Parameter_4843" name="Km_A" value="0.0223"/>
          <Constant key="Parameter_4842" name="kcat_PA" value="129.1"/>
          <Constant key="Parameter_4841" name="Km_PA" value="0.059"/>
          <Constant key="Parameter_4840" name="Km_B" value="0.0677"/>
          <Constant key="Parameter_4839" name="Km_PB" value="0.502"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4846"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_4845"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4844"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4843"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_4842"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_4841"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4840"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_4839"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_48" name="NMNAT1-NaMN[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#"
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_48">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>values used</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:17402747"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/0003-9861(67)90262-7"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Keq</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:16118205"/>
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T14:33:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:2.7.7.1"/>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:2.7.7.18"/>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_65" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_70" stoichiometry="1"/>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4838" name="E_T" value="100"/>
          <Constant key="Parameter_4837" name="scaling" value="0.001"/>
          <Constant key="Parameter_4836" name="kcat_A" value="42.9"/>
          <Constant key="Parameter_4835" name="Km_A" value="0.0677"/>
          <Constant key="Parameter_4834" name="kcat_PA" value="103.8"/>
          <Constant key="Parameter_4833" name="Km_PA" value="0.502"/>
          <Constant key="Parameter_4832" name="Km_B" value="22.3"/>
          <Constant key="Parameter_4831" name="Km_PB" value="0.059"/>
        </ListOfConstants>
        <KineticLaw function="Function_42" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_275">
              <SourceParameter reference="Parameter_4838"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_274">
              <SourceParameter reference="Parameter_4837"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_273">
              <SourceParameter reference="Parameter_4836"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_272">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_266">
              <SourceParameter reference="Parameter_4835"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_276">
              <SourceParameter reference="Parameter_4834"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_277">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_278">
              <SourceParameter reference="Parameter_4833"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_279">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_280">
              <SourceParameter reference="Parameter_4832"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_281">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_282">
              <SourceParameter reference="Parameter_4831"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_49" name="NADS[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_49">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:4340699" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T14:36:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:is rdf:resource="urn:miriam:ec-code:6.3.5.1" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_65" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_80" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_54" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_60" stoichiometry="1"/>
          <Product metabolite="Metabolite_77" stoichiometry="1"/>
          <Product metabolite="Metabolite_68" stoichiometry="1"/>
          <Product metabolite="Metabolite_69" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4830" name="E_T" value="10"/>
          <Constant key="Parameter_4829" name="turnover" value="21"/>
          <Constant key="Parameter_4828" name="scaling" value="0.001"/>
          <Constant key="Parameter_4827" name="Km" value="0.19"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4830"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4829"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_65"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_80"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4828"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4827"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_50" name="NT5-NMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_50">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Km</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26385918" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T15:21:48Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          KM and Kcat for CN-III
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_70" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4826" name="ET" value="10"/>
          <Constant key="Parameter_4825" name="scaling" value="0.001"/>
          <Constant key="Parameter_4824" name="kcat" value="0.5"/>
          <Constant key="Parameter_4823" name="Km" value="5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4826"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4825"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4824"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_70"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4823"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_51" name="PNP-NR[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_51">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/S0163-7258(00)00097-8" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>original work calf Km and kcat calculated with MW of 92kDa</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9030766" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:54:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4822" name="E_T" value="10"/>
          <Constant key="Parameter_4821" name="turnover" value="40"/>
          <Constant key="Parameter_4820" name="scaling" value="0.001"/>
          <Constant key="Parameter_4819" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4822"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4821"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4820"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4819"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_52" name="Nam-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_52">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4818" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_53" name="NT5-NaMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_53">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Km</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:26385918" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T09:44:57Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Km and Kcat from CN-II
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_72" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4817" name="ET" value="10"/>
          <Constant key="Parameter_4816" name="scaling" value="0.001"/>
          <Constant key="Parameter_4815" name="kcat" value="2.8"/>
          <Constant key="Parameter_4814" name="Km" value="3.5"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4817"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4816"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4815"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_72"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4814"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_54" name="SIRT[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_54">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1021/bi049592e" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-16T14:44:39Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_58" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
          <Product metabolite="Metabolite_59" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4813" name="ET" value="10"/>
          <Constant key="Parameter_4812" name="scaling" value="0.001"/>
          <Constant key="Parameter_4811" name="Kcat" value="0.67"/>
          <Constant key="Parameter_4810" name="Km" value="0.029"/>
          <Constant key="Parameter_4809" name="Ki" value="0.06"/>
        </ListOfConstants>
        <KineticLaw function="Function_44" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_296">
              <SourceParameter reference="Parameter_4813"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_295">
              <SourceParameter reference="Parameter_4812"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_283">
              <SourceParameter reference="Parameter_4811"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_284">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_285">
              <SourceParameter reference="Metabolite_58"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_286">
              <SourceParameter reference="Parameter_4810"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_287">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_297">
              <SourceParameter reference="Parameter_4809"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_55" name="NAD-consumption without Nam inhibition[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_55">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-24T14:33:30Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4808" name="ET" value="0"/>
          <Constant key="Parameter_4807" name="scaling" value="0.001"/>
          <Constant key="Parameter_4806" name="kcat" value="1"/>
          <Constant key="Parameter_4805" name="Km" value="1"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4808"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4807"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4806"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4805"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_56" name="NADA[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_56">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Km 0.033 and Kcat 8.5</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:3036844" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>used values</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:22229411" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2011-03-18T13:29:56Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
    <CopasiMT:isPartOf rdf:resource="urn:miriam:ec-code:3.5.1.19" />
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_67" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4804" name="ET" value="100"/>
          <Constant key="Parameter_4803" name="scaling" value="0.001"/>
          <Constant key="Parameter_4802" name="Kcat" value="0.69"/>
          <Constant key="Parameter_4801" name="Km" value="0.009"/>
          <Constant key="Parameter_4800" name="Ki" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_43" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_294">
              <SourceParameter reference="Parameter_4804"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_293">
              <SourceParameter reference="Parameter_4803"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_292">
              <SourceParameter reference="Parameter_4802"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_291">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_290">
              <SourceParameter reference="Parameter_4801"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_289">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_288">
              <SourceParameter reference="Parameter_4800"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_57" name="NAM import[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_57">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          cell size HeLa 3e-12 l
fibro blast 1e-12l

maximal E. coli uptake NA http://www.jbc.org/content/248/14/5144.full.pdf 630 molceules per cell and s 

thus approx. 1 miktoM/ls

 HeLa (epithelial; 8.2 ± 0.3 fmol/10 min), 
NIH-3T3 cells : The apparent Km of NAD transport was ∼190 μM while the Vmax was 429 pmol/well/10 min. 
http://www.jbc.org/content/283/10/6367.full  

(1.2e6 cells per well according to thermo fisher cell culture specifications)

thus approx. 0.2 mikroM/s

15mg uptake per 60kg body = 2.5e-8 mmol/ls
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_76" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4799" name="k1" value="100"/>
          <Constant key="Parameter_4798" name="k2" value="100"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="ConcentrationPerTime" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_81"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="ModelValue_5"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_58" name="NAMPT[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_58">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-09-07T08:19:58Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_76" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_79" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
          <Product metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4797" name="ET" value="0"/>
          <Constant key="Parameter_4796" name="scaling" value="0.001"/>
          <Constant key="Parameter_4795" name="Kcat" value="0.0077"/>
          <Constant key="Parameter_4794" name="Km" value="5e-06"/>
          <Constant key="Parameter_4793" name="Ki" value="0.0021"/>
        </ListOfConstants>
        <KineticLaw function="Function_45" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_305">
              <SourceParameter reference="Parameter_4797"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_304">
              <SourceParameter reference="Parameter_4796"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_303">
              <SourceParameter reference="ModelValue_7"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_302">
              <SourceParameter reference="Metabolite_76"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_301">
              <SourceParameter reference="ModelValue_6"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_300">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_299">
              <SourceParameter reference="Parameter_4793"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_59" name="NAR-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_59">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4792" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_60" name="NA-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_60">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4791" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_71"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_61" name="NAD-binding[1]" reversible="true" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_61">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-12-09T15:18:22Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_77" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_57" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4790" name="k1" value="1"/>
          <Constant key="Parameter_4789" name="k2" value="0.1"/>
        </ListOfConstants>
        <KineticLaw function="Function_14" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_69">
              <SourceParameter reference="Parameter_4790"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_68">
              <SourceParameter reference="Metabolite_77"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_78">
              <SourceParameter reference="Parameter_4789"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_79">
              <SourceParameter reference="Metabolite_57"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_62" name="NRK1-NaMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_62">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Vmax of purified anzyme and Km for NR</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19027704" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-30T10:16:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol for NMN
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_72" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4788" name="ET" value="10"/>
          <Constant key="Parameter_4787" name="scaling" value="0.001"/>
          <Constant key="Parameter_4786" name="kcat" value="0.23"/>
          <Constant key="Parameter_4785" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4788"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4787"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4786"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4785"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_63" name="PNP-NAR[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_63">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:doi:10.1016/S0163-7258(00)00097-8" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>original work calf Km and kcat calculated with MW of 92kDa</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:9030766" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-11-23T10:54:08Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Parameter have to be adjusted for NAR...currently NR affinities are used
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_78" stoichiometry="1"/>
          <Substrate metabolite="Metabolite_62" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_71" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4784" name="E_T" value="10"/>
          <Constant key="Parameter_4783" name="turnover" value="40"/>
          <Constant key="Parameter_4782" name="scaling" value="0.001"/>
          <Constant key="Parameter_4781" name="Km" value="1.48"/>
        </ListOfConstants>
        <KineticLaw function="Function_40" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_264">
              <SourceParameter reference="Parameter_4784"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_263">
              <SourceParameter reference="Parameter_4783"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_262">
              <SourceParameter reference="Metabolite_78"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_261">
              <SourceParameter reference="Metabolite_62"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_250">
              <SourceParameter reference="Parameter_4782"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_265">
              <SourceParameter reference="Parameter_4781"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_64" name="NR-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_64">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4780" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_65" name="NRK1-NMN[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:CopasiMT="http://www.copasi.org/RDF/MiriamTerms#" xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_65">
    <dcterms:bibliographicCitation>
      <rdf:Description>
        <dcterms:description>Vmax of purified anzyme and Km for NR</dcterms:description>
        <CopasiMT:isDescribedBy rdf:resource="urn:miriam:pubmed:19027704" />
      </rdf:Description>
    </dcterms:bibliographicCitation>
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2016-09-30T10:16:21Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Comment>
          Kcat calculated from vmax of purified enzyme (600nmol/min*mg) using an MW of 23193 g/mol
        </Comment>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_61" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfProducts>
          <Product metabolite="Metabolite_70" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfModifiers>
          <Modifier metabolite="Metabolite_78" stoichiometry="1"/>
        </ListOfModifiers>
        <ListOfConstants>
          <Constant key="Parameter_4779" name="ET" value="10"/>
          <Constant key="Parameter_4778" name="scaling" value="0.001"/>
          <Constant key="Parameter_4777" name="kcat" value="0.23"/>
          <Constant key="Parameter_4776" name="Km" value="0.0034"/>
        </ListOfConstants>
        <KineticLaw function="Function_41" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_271">
              <SourceParameter reference="Parameter_4779"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_270">
              <SourceParameter reference="Parameter_4778"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_269">
              <SourceParameter reference="Parameter_4777"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_268">
              <SourceParameter reference="Metabolite_61"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_267">
              <SourceParameter reference="Parameter_4776"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_66" name="NAD-efflux[0]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_66">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4775" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_3"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_67" name="NAD-efflux[1]" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_67">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2015-05-26T10:26:00Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ListOfSubstrates>
          <Substrate metabolite="Metabolite_50" stoichiometry="1"/>
        </ListOfSubstrates>
        <ListOfConstants>
          <Constant key="Parameter_4774" name="k1" value="2.8e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_13" unitType="Default" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_80">
              <SourceParameter reference="ModelValue_4"/>
            </CallParameter>
            <CallParameter functionParameter="FunctionParameter_81">
              <SourceParameter reference="Metabolite_50"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
      <Reaction key="Reaction_68" name="Nam uptake" reversible="false" fast="false" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Reaction_68">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2012-04-17T11:49:02Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

        </MiriamAnnotation>
        <Comment>
          cell size HeLa 3e-12 l
fibro blast 1e-12l

maximal E. coli uptake NA http://www.jbc.org/content/248/14/5144.full.pdf 630 molceules per cell and s 

thus approx. 1 miktoM/ls

 HeLa (epithelial; 8.2 ± 0.3 fmol/10 min), 
NIH-3T3 cells : The apparent Km of NAD transport was ∼190 μM while the Vmax was 429 pmol/well/10 min. 
http://www.jbc.org/content/283/10/6367.full  

(1.2e6 cells per well according to thermo fisher cell culture specifications)

thus approx. 0.2 mikroM/s

15mg uptake per 60kg body = 2.5e-8 mmol/ls
        </Comment>
        <ListOfProducts>
          <Product metabolite="Metabolite_81" stoichiometry="1"/>
        </ListOfProducts>
        <ListOfConstants>
          <Constant key="Parameter_4773" name="v" value="1e-05"/>
        </ListOfConstants>
        <KineticLaw function="Function_6" unitType="ConcentrationPerTime" scalingCompartment="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]">
          <ListOfCallParameters>
            <CallParameter functionParameter="FunctionParameter_49">
              <SourceParameter reference="Parameter_4773"/>
            </CallParameter>
          </ListOfCallParameters>
        </KineticLaw>
      </Reaction>
    </ListOfReactions>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT]" value="0.001" type="Compartment" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA]" value="0.001" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[Gln]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[DNA_damage]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[DNA_ADPR]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NADbound]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[H3_ac]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[H3_deac]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[Glu]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NR]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[Pi]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAR_copy]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAM_copy]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NaAD]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[1-methyl-NAM]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[H2O]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[PPi]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[AMP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NMN]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NA]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NaMN]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[ADP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[SAM]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[SAH]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAM]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAD]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAR]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[PRPP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[ATP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[Gln]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[DNA_damage]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[DNA_ADPR]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NADbound]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[H3_ac]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[H3_deac]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[Glu]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NR]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[Pi]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAR_copy]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAM_copy]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NaAD]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[1-methyl-NAM]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[H2O]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[PPi]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[AMP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NMN]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NA]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NaMN]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[ADP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[SAM]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[SAH]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAM]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAD]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAR]" value="NaN" type="Species" simulationType="reactions"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[PRPP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[ATP]" value="NaN" type="Species" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[Nam_ex]" value="NaN" type="Species" simulationType="reactions"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Values[scaling]" value="0.001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT]" value="2.8e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NADA]" value="2.8e-05" type="ModelValue" simulationType="assignment"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter]" value="100" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT]" value="5.0000000000000004e-06" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Kcat NamPT]" value="0.0077000000000000002" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all]" value="2.8e-05" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMN-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMN-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="3.2999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.00014999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_A" value="53.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.0223" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="129.09999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_B" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.502" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_A" value="42.899999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="103.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.502" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_B" value="22.300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.19" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[0\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=ET" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=Kcat" value="8.0999999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.40000000000000002" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="2.7999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="3.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.67000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.029000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=ET" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=ET" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.68999999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.0089999999999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[0\]],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[0\]],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=ET" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.0077000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Kcat NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=Km" value="5.0000000000000004e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=Ki" value="0.0020999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAR-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAR-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-binding\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-binding\[0\]],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-binding\[0\]],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[0\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NR-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NR-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[0\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMN-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMN-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NADA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="3.2999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAPRT\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.00014999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_A" value="53.799999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.0223" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="129.09999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_B" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.502" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_A" value="42.899999999999999" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_A" value="0.067699999999999996" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat_PA" value="103.8" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PA" value="0.502" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_B" value="22.300000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km_PB" value="0.058999999999999997" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="21" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADS\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.19" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="0.5" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NR\[1\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NADA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="2.7999999999999998" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="3.5" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.67000000000000004" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.029000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],ParameterGroup=Parameters,Parameter=Ki" value="0.059999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=ET" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],ParameterGroup=Parameters,Parameter=Km" value="1" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=ET" value="100" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.68999999999999995" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.0089999999999999993" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=Ki" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[1\]],ParameterGroup=Parameters,Parameter=k1" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[1\]],ParameterGroup=Parameters,Parameter=k2" value="100" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=ET" value="0" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=Kcat" value="0.0077000000000000002" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Kcat NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=Km" value="5.0000000000000004e-06" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=Ki" value="0.0020999999999999999" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAR-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAR-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NADA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NADA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-binding\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-binding\[1\]],ParameterGroup=Parameters,Parameter=k1" value="1" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-binding\[1\]],ParameterGroup=Parameters,Parameter=k2" value="0.10000000000000001" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NaMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=E_T" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=turnover" value="40" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NAR\[1\]],ParameterGroup=Parameters,Parameter=Km" value="1.48" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NR-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NR-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NADA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=ET" value="10" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=scaling" value="0.001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=kcat" value="0.23000000000000001" type="ReactionParameter" simulationType="fixed"/>
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NRK1-NMN\[1\]],ParameterGroup=Parameters,Parameter=Km" value="0.0033999999999999998" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-efflux\[0\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-efflux\[0\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-efflux\[1\]]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-efflux\[1\]],ParameterGroup=Parameters,Parameter=k1" value="2.8e-05" type="ReactionParameter" simulationType="assignment">
              <InitialExpression>
                &lt;CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NADA],Reference=InitialValue>
              </InitialExpression>
            </ModelParameter>
          </ModelParameterGroup>
          <ModelParameterGroup cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam uptake]" type="Reaction">
            <ModelParameter cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam uptake],ParameterGroup=Parameters,Parameter=v" value="1.0000000000000001e-05" type="ReactionParameter" simulationType="fixed"/>
          </ModelParameterGroup>
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_76"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_70"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_77"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_72"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_71"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_81"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_78"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_30"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="ModelValue_3"/>
      <StateTemplateVariable objectReference="ModelValue_4"/>
      <StateTemplateVariable objectReference="Metabolite_27"/>
      <StateTemplateVariable objectReference="Metabolite_28"/>
      <StateTemplateVariable objectReference="Metabolite_29"/>
      <StateTemplateVariable objectReference="Metabolite_31"/>
      <StateTemplateVariable objectReference="Metabolite_32"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_66"/>
      <StateTemplateVariable objectReference="Metabolite_67"/>
      <StateTemplateVariable objectReference="Metabolite_68"/>
      <StateTemplateVariable objectReference="Metabolite_69"/>
      <StateTemplateVariable objectReference="Metabolite_73"/>
      <StateTemplateVariable objectReference="Metabolite_74"/>
      <StateTemplateVariable objectReference="Metabolite_75"/>
      <StateTemplateVariable objectReference="Metabolite_79"/>
      <StateTemplateVariable objectReference="Metabolite_80"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="Compartment_2"/>
      <StateTemplateVariable objectReference="ModelValue_0"/>
      <StateTemplateVariable objectReference="ModelValue_5"/>
      <StateTemplateVariable objectReference="ModelValue_6"/>
      <StateTemplateVariable objectReference="ModelValue_7"/>
      <StateTemplateVariable objectReference="ModelValue_8"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN 2.8e-05 2.8e-05 NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN NaN 0.001 0.001 0.001 100 5.0000000000000004e-06 0.0077000000000000002 2.8e-05 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_12" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="1"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="10000"/>
        <Parameter name="StepSize" type="float" value="0.10000000000000001"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Scan" type="scan" scheduled="true" updateModel="false">
      <Report reference="Report_26" target="" append="0" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="0"/>
        <ParameterGroup name="ScanItems">
          <ParameterGroup name="ScanItem">
            <Parameter name="Maximum" type="float" value="0.00027999999999999998"/>
            <Parameter name="Minimum" type="float" value="2.7e-06"/>
            <Parameter name="Number of steps" type="unsignedInteger" value="100"/>
            <Parameter name="Object" type="cn" value="CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue"/>
            <Parameter name="Type" type="unsignedInteger" value="1"/>
            <Parameter name="log" type="bool" value="1"/>
          </ParameterGroup>
        </ParameterGroup>
        <Parameter name="Output in subtask" type="bool" value="0"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_9" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="0"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_8" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="Celegans/NNMT_scan_MNA.txt" append="0" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          abs(&lt;CN=Root,Model=New Model,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration>-0.006)
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1.8357099999999999e-06"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMNAT1-NMN],ParameterGroup=Parameters,Parameter=E_T,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="27.530805060848021"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="1.0899513512407681e-05"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NT5-NMN],ParameterGroup=Parameters,Parameter=E_T,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="28.969941752788429"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PNP-NMR],ParameterGroup=Parameters,Parameter=E_T,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="8.2905472020351816"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
          <ParameterGroup name="OptimizationItem">
            <Parameter name="LowerBound" type="cn" value="1"/>
            <Parameter name="ObjectCN" type="cn" value="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
            <Parameter name="StartValue" type="float" value="21.53431184044117"/>
            <Parameter name="UpperBound" type="cn" value="1000"/>
          </ParameterGroup>
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="Experiment Set">
        </ParameterGroup>
        <ParameterGroup name="Validation Set">
          <Parameter name="Weight" type="unsignedFloat" value="1"/>
          <Parameter name="Threshold" type="unsignedInteger" value="5"/>
        </ParameterGroup>
      </Problem>
      <Method name="Evolutionary Programming" type="EvolutionaryProgram">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Generations" type="unsignedInteger" value="200"/>
        <Parameter name="Population Size" type="unsignedInteger" value="20"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
        <Parameter name="Stop after # Stalled Generations" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_6" name="Metabolic Control Analysis" type="metabolicControlAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_5" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="ExponentNumber" type="unsignedInteger" value="3"/>
        <Parameter name="DivergenceRequested" type="bool" value="1"/>
        <Parameter name="TransientTime" type="float" value="0"/>
      </Problem>
      <Method name="Wolf Method" type="WolfMethod">
        <Parameter name="Orthonormalization Interval" type="unsignedFloat" value="1"/>
        <Parameter name="Overall time" type="unsignedFloat" value="1000"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="0"/>
          </ParameterGroup>
        </ParameterGroup>
      </Problem>
      <Method name="Sensitivities Method" type="SensitivitiesMethod">
        <Parameter name="Delta factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Delta minimum" type="unsignedFloat" value="9.9999999999999998e-13"/>
      </Method>
    </Task>
    <Task key="Task_2" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_27" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_1" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="" append="1" confirmOverwrite="0"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_12"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_13" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="0"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="0"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
        <Parameter name="Continue on Simultaneous Events" type="bool" value="0"/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_9" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_8" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_7" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Problem=Optimization,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Optimization],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_6" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Description"/>
        <Object cn="String=\[Function Evaluations\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Value\]"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="String=\[Best Parameters\]"/>
      </Header>
      <Body>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Function Evaluations"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Value"/>
        <Object cn="Separator=&#x09;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Problem=Parameter Estimation,Reference=Best Parameters"/>
      </Body>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Parameter Estimation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_5" name="Metabolic Control Analysis" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_4" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Lyapunov Exponents],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Time Scale Separation Analysis],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Sensitivities],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Linear Noise Approximation],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_0" name="SIRT-MNA-NAM" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[1-methyl-NAM],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[a],Reference=InitialValue"/>
      </Table>
    </Report>
    <Report key="Report_20" name="Sirtscan" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],Reference=Flux"/>
      </Table>
    </Report>
    <Report key="Report_21" name="PARP-NA-MNA" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[a],Reference=InitialValue"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PARP],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[1-methyl-NAM],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_22" name="NMMT scan" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[1-methyl-NAM],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_23" name="PARP_NAM_scan" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PARP],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[1-methyl-NAM],Reference=Concentration"/>
      </Table>
    </Report>
    <Report key="Report_24" name="steadystatescan" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT],ParameterGroup=Parameters,Parameter=Km,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT],ParameterGroup=Parameters,Parameter=Km,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],Reference=Flux"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAM],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NMN],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[scaling],Reference=InitialValue"/>
      </Table>
    </Report>
    <Report key="Report_25" name="MCAScan" taskType="metabolicControlAnalysis" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled concentration control coefficients[NAD,(NAMPT)]"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled concentration control coefficients[NAD,(NNMT)]"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(SIRT),(NAMPT)]"/>
        <Object cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(SIRT),(NNMT)]"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],Reference=Flux"/>
      </Table>
    </Report>
    <Report key="Report_26" name="competition scan" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
      </Comment>
      <Table printTitle="1">
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[0\]],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAMPT\[1\]],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NNMT\[0\]],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],Reference=Flux"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],Reference=Flux"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAD],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAD],Reference=Concentration"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam uptake],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Values[scaling],Reference=Value"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Reference=InitialVolume"/>
        <Object cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Reference=InitialVolume"/>
      </Table>
    </Report>
    <Report key="Report_27" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="String=&#x0a;"/>
        <Object cn="CN=Root,Vector=TaskList[Moieties],Object=Result"/>
      </Footer>
    </Report>
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="NAD over PARP" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD]|(PARP).ET" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn=""/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAM]|(PARP).ET" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[PARP],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Sirtactivity over Nam import" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(SIRT).Flux|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NAD" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAM]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NA import" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(SIRT).Flux|(NA import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Nam import" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAM]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAR]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NA]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NMN]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NMN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NMR]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NMR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NaAD]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NaAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NaMN]|(NAM import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NaMN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Concentrations, Volumes, and Global Quantity Values" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[NA import]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn=""/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[NAD degradation]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[NAD degradation],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vf NMNAT1]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Vf NMNAT1],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="Values[Vr NMNAT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Vr NMNAT],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAM]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NA]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NA],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NMN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NMN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NMR]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NMR],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NaAD]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NaAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NaMN]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NaMN],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NaM]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NaM],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[Pi]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[Pi],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NAD vs import" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Sirt over Km NamPRT" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="(SIRT[0]).Flux|Values[Km NamPRT].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(SIRT[1]).Flux|Values[Km NamPRT].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NAD over NAM import" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Sirt over cell division rate" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(SIRT[0]).Flux|Values[cell devision all].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(SIRT[1]).Flux|Values[cell devision all].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NAD over cell division rate" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD{Host}]|Values[cell devision all].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD{Pathogen}]|Values[cell devision all].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[cell devision all],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Namefflux over Namimport" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="Values[Namefflux]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=Value"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NAD_NA import_" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD]|(NA import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Cytosol],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Efflux over Na import" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(NA-efflux).Flux|(NA import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NAD-efflux).Flux|(NA import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NAR-efflux).Flux|(NA import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAR-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NMN-efflux).Flux|(NA import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMN-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NR-efflux).Flux|(NA import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NR-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Nam-efflux).Flux|(NA import).Flux" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA import],Reference=Flux"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Flux control" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)]['Summation Error']|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn=""/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NA import)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NA import)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NA-efflux)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NA-efflux)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NAD-binding)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NAD-binding)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NAD-consumption without Nam inhibition)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NAD-consumption without Nam inhibition)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NAD-efflux)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NAD-efflux)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NADA)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NADA)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NADS)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NADS)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NAM import)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NAM import)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NAMPT)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NAMPT)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NAPRT)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NAPRT)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NAR-efflux)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NAR-efflux)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NMN-efflux)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NMN-efflux)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NMNAT1-NMN)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NMNAT1-NMN)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NMNAT1-NaMN)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NMNAT1-NaMN)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NNMT)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NNMT)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NR-efflux)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NR-efflux)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NRK1-NMN)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NRK1-NMN)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NRK1-NaMN)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NRK1-NaMN)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NT5-NMN)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NT5-NMN)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(NT5-NaMN)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(NT5-NaMN)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(Nam-efflux)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(Nam-efflux)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(PNP-NAR)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(PNP-NAR)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(PNP-NR)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(PNP-NR)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(NAD-efflux)][(SIRT)]|(NAM import).v" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import],ParameterGroup=Parameters,Parameter=v,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(NAD-efflux),(SIRT)]"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Efflux over cell division rate" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(NA-efflux).Flux|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NA-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NAD-efflux).Flux|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NAR-efflux).Flux|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAR-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NMN-efflux).Flux|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NMN-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NR-efflux).Flux|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NR-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(Nam-efflux).Flux|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam-efflux],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Controlanalysis" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled concentration control coefficients[NAD][(NAM import)]|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled concentration control coefficients[NAD,(NAM import)]"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="TaskList[Metabolic Control Analysis].Scaled flux control coefficients[(SIRT)][(NAM import)]|Values[cell division rate].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[celldivision_compartment_NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Vector=TaskList[Metabolic Control Analysis],Method=MCA Method (Reder),Array=Scaled flux control coefficients[(SIRT),(NAM import)]"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Pathogen simulations" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD{Host}]|Values[Km NamPRT].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD{Pathogen}]|Values[Km NamPRT].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="Pathogen simulations_NADA" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD{Host}]|(NADA[1]).ET" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD{Pathogen}]|(NADA[1]).ET" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NADA\[1\]],ParameterGroup=Parameters,Parameter=ET,Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NAD consumption" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="1"/>
      <ListOfPlotItems>
        <PlotItem name="(NAD-consumption without Nam inhibition[0]).Flux|Values[Km NamPRT].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[0\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NAD-consumption without Nam inhibition[1]).Flux|Values[Km NamPRT].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAD-consumption without Nam inhibition\[1\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="import rates vs. consumption rates" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="(NAM import[0]).Flux|Values[Nam transporter].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[0\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(NAM import[1]).Flux|Values[Nam transporter].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[NAM import\[1\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(SIRT[0]).Flux|Values[Nam transporter].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[0\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="(SIRT[1]).Flux|Values[Nam transporter].InitialValue" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Nam transporter],Reference=InitialValue"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Reactions[SIRT\[1\]],Reference=Flux"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="NAD over Km NamPRT" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="1"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
        <PlotItem name="[NAD{Host}]|Values[Km NamPRT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Copartment_NamPT],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[NAD{Pathogen}]|Values[Km NamPRT]" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Values[Km NamPT],Reference=Value"/>
            <ChannelSpec cn="CN=Root,Model=NAD Phylogeny,Vector=Compartments[Compartment_NADA],Vector=Metabolites[NAD],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
    <PlotSpecification name="plot" type="Plot2D" active="0" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <ListOfPlotItems>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
    <ListOfSliders>
      <Slider key="Slider_0" associatedEntityKey="Task_10" objectCN="CN=Root,Model=NAD Phylogeny,Vector=Reactions[Nam uptake],ParameterGroup=Parameters,Parameter=v,Reference=Value" objectType="float" objectValue="1e-05" minValue="1e-07" maxValue="0.001" tickNumber="1000" tickFactor="100" scaling="linear"/>
    </ListOfSliders>
  </GUI>
  <SBMLReference file="competition_model.xml">
    <SBMLMap SBMLid="ADP_Compartment_NADA" COPASIkey="Metabolite_73"/>
    <SBMLMap SBMLid="ADP_Copartment_NamPT" COPASIkey="Metabolite_46"/>
    <SBMLMap SBMLid="AMP_Compartment_NADA" COPASIkey="Metabolite_69"/>
    <SBMLMap SBMLid="AMP_Copartment_NamPT" COPASIkey="Metabolite_42"/>
    <SBMLMap SBMLid="ATP_Compartment_NADA" COPASIkey="Metabolite_80"/>
    <SBMLMap SBMLid="ATP_Copartment_NamPT" COPASIkey="Metabolite_53"/>
    <SBMLMap SBMLid="Compartment_NADA" COPASIkey="Compartment_2"/>
    <SBMLMap SBMLid="Competitie_inhibition_two_substrates_s2_const_scaling" COPASIkey="Function_42"/>
    <SBMLMap SBMLid="Competitive_inhibition_scaling" COPASIkey="Function_45"/>
    <SBMLMap SBMLid="Constant_flux__irreversible" COPASIkey="Function_6"/>
    <SBMLMap SBMLid="Copartment_NamPT" COPASIkey="Compartment_1"/>
    <SBMLMap SBMLid="DNA_ADPR_Compartment_NADA" COPASIkey="Metabolite_56"/>
    <SBMLMap SBMLid="DNA_ADPR_Copartment_NamPT" COPASIkey="Metabolite_29"/>
    <SBMLMap SBMLid="DNA_damage_Compartment_NADA" COPASIkey="Metabolite_55"/>
    <SBMLMap SBMLid="DNA_damage_Copartment_NamPT" COPASIkey="Metabolite_28"/>
    <SBMLMap SBMLid="Gln_Compartment_NADA" COPASIkey="Metabolite_54"/>
    <SBMLMap SBMLid="Gln_Copartment_NamPT" COPASIkey="Metabolite_27"/>
    <SBMLMap SBMLid="Glu_Compartment_NADA" COPASIkey="Metabolite_60"/>
    <SBMLMap SBMLid="Glu_Copartment_NamPT" COPASIkey="Metabolite_33"/>
    <SBMLMap SBMLid="H2O_Compartment_NADA" COPASIkey="Metabolite_67"/>
    <SBMLMap SBMLid="H2O_Copartment_NamPT" COPASIkey="Metabolite_40"/>
    <SBMLMap SBMLid="H3_ac_Compartment_NADA" COPASIkey="Metabolite_58"/>
    <SBMLMap SBMLid="H3_ac_Copartment_NamPT" COPASIkey="Metabolite_31"/>
    <SBMLMap SBMLid="H3_deac_Compartment_NADA" COPASIkey="Metabolite_59"/>
    <SBMLMap SBMLid="H3_deac_Copartment_NamPT" COPASIkey="Metabolite_32"/>
    <SBMLMap SBMLid="Kcat_NamPT" COPASIkey="ModelValue_7"/>
    <SBMLMap SBMLid="Km_NamPT" COPASIkey="ModelValue_6"/>
    <SBMLMap SBMLid="MM_with_ET_and_scaling" COPASIkey="Function_41"/>
    <SBMLMap SBMLid="NADA_0" COPASIkey="Reaction_35"/>
    <SBMLMap SBMLid="NADA_1" COPASIkey="Reaction_56"/>
    <SBMLMap SBMLid="NADS_0" COPASIkey="Reaction_27"/>
    <SBMLMap SBMLid="NADS_1" COPASIkey="Reaction_49"/>
    <SBMLMap SBMLid="NAD_Compartment_NADA" COPASIkey="Metabolite_77"/>
    <SBMLMap SBMLid="NAD_Copartment_NamPT" COPASIkey="Metabolite_50"/>
    <SBMLMap SBMLid="NAD_binding_0" COPASIkey="Reaction_40"/>
    <SBMLMap SBMLid="NAD_binding_1" COPASIkey="Reaction_61"/>
    <SBMLMap SBMLid="NAD_consumption_without_Nam_inhibition_0" COPASIkey="Reaction_34"/>
    <SBMLMap SBMLid="NAD_consumption_without_Nam_inhibition_1" COPASIkey="Reaction_55"/>
    <SBMLMap SBMLid="NAD_efflux_0" COPASIkey="Reaction_66"/>
    <SBMLMap SBMLid="NAD_efflux_1" COPASIkey="Reaction_67"/>
    <SBMLMap SBMLid="NADbound_Compartment_NADA" COPASIkey="Metabolite_57"/>
    <SBMLMap SBMLid="NADbound_Copartment_NamPT" COPASIkey="Metabolite_30"/>
    <SBMLMap SBMLid="NAMPT_0" COPASIkey="Reaction_37"/>
    <SBMLMap SBMLid="NAMPT_1" COPASIkey="Reaction_58"/>
    <SBMLMap SBMLid="NAM_Compartment_NADA" COPASIkey="Metabolite_76"/>
    <SBMLMap SBMLid="NAM_Copartment_NamPT" COPASIkey="Metabolite_49"/>
    <SBMLMap SBMLid="NAM_copy_Compartment_NADA" COPASIkey="Metabolite_64"/>
    <SBMLMap SBMLid="NAM_copy_Copartment_NamPT" COPASIkey="Metabolite_37"/>
    <SBMLMap SBMLid="NAM_import_0" COPASIkey="Reaction_36"/>
    <SBMLMap SBMLid="NAM_import_1" COPASIkey="Reaction_57"/>
    <SBMLMap SBMLid="NAPRT_0" COPASIkey="Reaction_24"/>
    <SBMLMap SBMLid="NAPRT_1" COPASIkey="Reaction_46"/>
    <SBMLMap SBMLid="NAR_Compartment_NADA" COPASIkey="Metabolite_78"/>
    <SBMLMap SBMLid="NAR_Copartment_NamPT" COPASIkey="Metabolite_51"/>
    <SBMLMap SBMLid="NAR_copy_Compartment_NADA" COPASIkey="Metabolite_63"/>
    <SBMLMap SBMLid="NAR_copy_Copartment_NamPT" COPASIkey="Metabolite_36"/>
    <SBMLMap SBMLid="NAR_efflux_0" COPASIkey="Reaction_38"/>
    <SBMLMap SBMLid="NAR_efflux_1" COPASIkey="Reaction_59"/>
    <SBMLMap SBMLid="NA_Compartment_NADA" COPASIkey="Metabolite_71"/>
    <SBMLMap SBMLid="NA_Copartment_NamPT" COPASIkey="Metabolite_44"/>
    <SBMLMap SBMLid="NA_efflux_0" COPASIkey="Reaction_39"/>
    <SBMLMap SBMLid="NA_efflux_1" COPASIkey="Reaction_60"/>
    <SBMLMap SBMLid="NMNAT1_NMN_0" COPASIkey="Reaction_25"/>
    <SBMLMap SBMLid="NMNAT1_NMN_1" COPASIkey="Reaction_47"/>
    <SBMLMap SBMLid="NMNAT1_NaMN_0" COPASIkey="Reaction_26"/>
    <SBMLMap SBMLid="NMNAT1_NaMN_1" COPASIkey="Reaction_48"/>
    <SBMLMap SBMLid="NMN_Compartment_NADA" COPASIkey="Metabolite_70"/>
    <SBMLMap SBMLid="NMN_Copartment_NamPT" COPASIkey="Metabolite_43"/>
    <SBMLMap SBMLid="NMN_efflux_0" COPASIkey="Reaction_23"/>
    <SBMLMap SBMLid="NMN_efflux_1" COPASIkey="Reaction_45"/>
    <SBMLMap SBMLid="NNMT_0" COPASIkey="Reaction_30"/>
    <SBMLMap SBMLid="NRK1_NMN_0" COPASIkey="Reaction_44"/>
    <SBMLMap SBMLid="NRK1_NMN_1" COPASIkey="Reaction_65"/>
    <SBMLMap SBMLid="NRK1_NaMN_0" COPASIkey="Reaction_41"/>
    <SBMLMap SBMLid="NRK1_NaMN_1" COPASIkey="Reaction_62"/>
    <SBMLMap SBMLid="NR_Compartment_NADA" COPASIkey="Metabolite_61"/>
    <SBMLMap SBMLid="NR_Copartment_NamPT" COPASIkey="Metabolite_34"/>
    <SBMLMap SBMLid="NR_efflux_0" COPASIkey="Reaction_43"/>
    <SBMLMap SBMLid="NR_efflux_1" COPASIkey="Reaction_64"/>
    <SBMLMap SBMLid="NT5_NMN_0" COPASIkey="Reaction_28"/>
    <SBMLMap SBMLid="NT5_NMN_1" COPASIkey="Reaction_50"/>
    <SBMLMap SBMLid="NT5_NaMN_0" COPASIkey="Reaction_32"/>
    <SBMLMap SBMLid="NT5_NaMN_1" COPASIkey="Reaction_53"/>
    <SBMLMap SBMLid="NaAD_Compartment_NADA" COPASIkey="Metabolite_65"/>
    <SBMLMap SBMLid="NaAD_Copartment_NamPT" COPASIkey="Metabolite_38"/>
    <SBMLMap SBMLid="NaMN_Compartment_NADA" COPASIkey="Metabolite_72"/>
    <SBMLMap SBMLid="NaMN_Copartment_NamPT" COPASIkey="Metabolite_45"/>
    <SBMLMap SBMLid="Nam_efflux_0" COPASIkey="Reaction_31"/>
    <SBMLMap SBMLid="Nam_efflux_1" COPASIkey="Reaction_52"/>
    <SBMLMap SBMLid="Nam_ex" COPASIkey="Metabolite_81"/>
    <SBMLMap SBMLid="Nam_transporter" COPASIkey="ModelValue_5"/>
    <SBMLMap SBMLid="Nam_uptake" COPASIkey="Reaction_68"/>
    <SBMLMap SBMLid="PNP_NAR_0" COPASIkey="Reaction_42"/>
    <SBMLMap SBMLid="PNP_NAR_1" COPASIkey="Reaction_63"/>
    <SBMLMap SBMLid="PNP_NR_0" COPASIkey="Reaction_29"/>
    <SBMLMap SBMLid="PNP_NR_1" COPASIkey="Reaction_51"/>
    <SBMLMap SBMLid="PPi_Compartment_NADA" COPASIkey="Metabolite_68"/>
    <SBMLMap SBMLid="PPi_Copartment_NamPT" COPASIkey="Metabolite_41"/>
    <SBMLMap SBMLid="PRPP_Compartment_NADA" COPASIkey="Metabolite_79"/>
    <SBMLMap SBMLid="PRPP_Copartment_NamPT" COPASIkey="Metabolite_52"/>
    <SBMLMap SBMLid="Pi_Compartment_NADA" COPASIkey="Metabolite_62"/>
    <SBMLMap SBMLid="Pi_Copartment_NamPT" COPASIkey="Metabolite_35"/>
    <SBMLMap SBMLid="Product_inhibition_scaling" COPASIkey="Function_43"/>
    <SBMLMap SBMLid="Product_inhibition_two_susbtrates_s2_const_scaling" COPASIkey="Function_44"/>
    <SBMLMap SBMLid="SAH_Compartment_NADA" COPASIkey="Metabolite_75"/>
    <SBMLMap SBMLid="SAH_Copartment_NamPT" COPASIkey="Metabolite_48"/>
    <SBMLMap SBMLid="SAM_Compartment_NADA" COPASIkey="Metabolite_74"/>
    <SBMLMap SBMLid="SAM_Copartment_NamPT" COPASIkey="Metabolite_47"/>
    <SBMLMap SBMLid="SIRT_0" COPASIkey="Reaction_33"/>
    <SBMLMap SBMLid="SIRT_1" COPASIkey="Reaction_54"/>
    <SBMLMap SBMLid="TwosubstratesMMs2constant" COPASIkey="Function_40"/>
    <SBMLMap SBMLid="_1_methyl_NAM_Compartment_NADA" COPASIkey="Metabolite_66"/>
    <SBMLMap SBMLid="_1_methyl_NAM_Copartment_NamPT" COPASIkey="Metabolite_39"/>
    <SBMLMap SBMLid="cell_devision_all" COPASIkey="ModelValue_8"/>
    <SBMLMap SBMLid="celldivision_compartment_NADA" COPASIkey="ModelValue_4"/>
    <SBMLMap SBMLid="celldivision_compartment_NamPT" COPASIkey="ModelValue_3"/>
    <SBMLMap SBMLid="scaling" COPASIkey="ModelValue_0"/>
  </SBMLReference>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_0" name="meter" symbol="m">
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_2" name="second" symbol="s">
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_6" name="Avogadro" symbol="Avogadro">
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_8" name="item" symbol="#">
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="liter" symbol="l">
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_20" name="mole" symbol="mol">
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_42" name="celsius" symbol="°C">
      <Expression>
        C
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
