<?xml version="1.0" encoding="UTF-8"?>
<!-- generated with COPASI 4.46 (Build 300) (http://www.copasi.org) at 2026-06-26T19:13:36Z -->
<?oxygen RNGSchema="http://www.copasi.org/static/schema/CopasiML.rng" type="xml"?>
<COPASI xmlns="http://www.copasi.org/static/schema" versionMajor="4" versionMinor="46" versionDevel="300" copasiSourcesModified="0">
  <Model key="Model_0" name="bc_model_appox" simulationType="time" timeUnit="s" volumeUnit="l" areaUnit="m²" lengthUnit="m" quantityUnit="mol" type="deterministic" avogadroConstant="6.0221407599999999e+23">
    <MiriamAnnotation>
<rdf:RDF
   xmlns:dcterms="http://purl.org/dc/terms/"
   xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
  <rdf:Description rdf:about="#Model_0">
    <dcterms:created>
      <rdf:Description>
        <dcterms:W3CDTF>2026-06-24T21:40:07Z</dcterms:W3CDTF>
      </rdf:Description>
    </dcterms:created>
  </rdf:Description>
</rdf:RDF>

    </MiriamAnnotation>
    <ListOfCompartments>
      <Compartment key="Compartment_1" name="compartment" simulationType="fixed" dimensionality="3" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Compartment_1">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </Compartment>
    </ListOfCompartments>
    <ListOfMetabolites>
      <Metabolite key="Metabolite_65" name="u0" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_65">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=bc_model_appox,Vector=Values[v0],Reference=Value>/(1+&lt;CN=Root,Model=bc_model_appox,Vector=Values[beta0],Reference=Value>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z10],Reference=Concentration>^2)*(&lt;CN=Root,Model=bc_model_appox,Vector=Values[p0],Reference=Value>-&lt;CN=Root,Model=bc_model_appox,Vector=Values[q0],Reference=Value>)*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u0],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Values[d0],Reference=Value>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u0],Reference=Concentration>+0.01*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V10],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_64" name="u1" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_64">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=bc_model_appox,Vector=Values[v0],Reference=Value>/(1+&lt;CN=Root,Model=bc_model_appox,Vector=Values[beta0],Reference=Value>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z10],Reference=Concentration>^2)*(1-&lt;CN=Root,Model=bc_model_appox,Vector=Values[p0],Reference=Value>+&lt;CN=Root,Model=bc_model_appox,Vector=Values[q0],Reference=Value>)*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u0],Reference=Concentration>+&lt;CN=Root,Model=bc_model_appox,Vector=Values[v1],Reference=Value>/(1+&lt;CN=Root,Model=bc_model_appox,Vector=Values[beta1],Reference=Value>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z10],Reference=Concentration>^2)*(&lt;CN=Root,Model=bc_model_appox,Vector=Values[p1],Reference=Value>-&lt;CN=Root,Model=bc_model_appox,Vector=Values[q1],Reference=Value>)*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u1],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Values[d1],Reference=Value>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u1],Reference=Concentration>+0.01*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W10],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_63" name="u2" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_63">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          &lt;CN=Root,Model=bc_model_appox,Vector=Values[v1],Reference=Value>/(1+&lt;CN=Root,Model=bc_model_appox,Vector=Values[beta1],Reference=Value>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z10],Reference=Concentration>^2)*(1-&lt;CN=Root,Model=bc_model_appox,Vector=Values[p1],Reference=Value>+&lt;CN=Root,Model=bc_model_appox,Vector=Values[q1],Reference=Value>)*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u1],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Values[d2],Reference=Value>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u2],Reference=Concentration>+0.01*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z10],Reference=Concentration>*&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V10],Reference=Concentration>
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_62" name="Z1" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_62">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u2],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z1],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_61" name="Z2" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_61">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z1],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z2],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_60" name="Z3" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_60">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z2],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z3],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_59" name="Z4" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_59">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z3],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z4],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_58" name="Z5" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_58">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z4],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z5],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_57" name="Z6" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_57">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z5],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z6],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_56" name="Z7" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_56">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z6],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z7],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_55" name="Z8" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_55">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z7],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z8],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_54" name="Z9" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_54">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z8],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z9],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_53" name="Z10" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_53">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z9],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z10],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_52" name="W1" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_52">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u2],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W1],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_51" name="W2" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_51">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W1],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W2],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_50" name="W3" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_50">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W2],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W3],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_49" name="W4" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_49">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W3],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W4],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_48" name="W5" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_48">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W4],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W5],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_47" name="W6" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_47">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W5],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W6],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_46" name="W7" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_46">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W6],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W7],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_45" name="W8" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_45">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W7],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W8],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_44" name="W9" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_44">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W8],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W9],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_43" name="W10" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_43">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          4*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W9],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W10],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_42" name="V1" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_42">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u0],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V1],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_41" name="V2" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_41">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V1],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V2],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_40" name="V3" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_40">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V2],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V3],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_39" name="V4" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_39">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V3],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V4],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_38" name="V5" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_38">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V4],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V5],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_37" name="V6" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_37">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V5],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V6],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_36" name="V7" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_36">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V6],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V7],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_35" name="V8" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_35">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V7],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V8],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_34" name="V9" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_34">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V8],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V9],Reference=Concentration>)
        </Expression>
      </Metabolite>
      <Metabolite key="Metabolite_33" name="V10" simulationType="ode" compartment="Compartment_1" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Metabolite_33">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <Expression>
          2*(&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V9],Reference=Concentration>-&lt;CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V10],Reference=Concentration>)
        </Expression>
      </Metabolite>
    </ListOfMetabolites>
    <ListOfModelValues>
      <ModelValue key="ModelValue_23" name="p0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_23">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_22" name="q0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_22">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_21" name="v0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_21">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_20" name="d0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_20">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_19" name="p1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_19">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_18" name="q1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_18">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_17" name="v1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_17">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_16" name="d1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_16">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_15" name="d2" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_15">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_14" name="beta0" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_14">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_13" name="beta1" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_13">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
      <ModelValue key="ModelValue_12" name="tau" simulationType="fixed" addNoise="false">
        <MiriamAnnotation>
<rdf:RDF xmlns:dcterms="http://purl.org/dc/terms/" xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelValue_12">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
      </ModelValue>
    </ListOfModelValues>
    <ListOfModelParameterSets activeSet="ModelParameterSet_0">
      <ModelParameterSet key="ModelParameterSet_0" name="Initial State">
        <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#ModelParameterSet_0">
</rdf:Description>
</rdf:RDF>
        </MiriamAnnotation>
        <ModelParameterGroup cn="String=Initial Time" type="Group">
          <ModelParameter cn="CN=Root,Model=bc_model_appox" value="0" type="Model" simulationType="time"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Compartment Sizes" type="Group">
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment]" value="1" type="Compartment" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Species Values" type="Group">
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u0]" value="6.0221407599999099e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u1]" value="6.0221407599999099e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u2]" value="6.0221407599999099e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z1]" value="6.022140759999914e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z2]" value="6.0221407599999146e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z3]" value="6.0221407599999153e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z4]" value="6.022140759999916e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z5]" value="6.0221407599999167e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z6]" value="6.0221407599999173e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z7]" value="6.022140759999918e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z8]" value="6.0221407599999187e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z9]" value="6.0221407599999193e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[Z10]" value="6.02214075999992e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W1]" value="6.0221407599999274e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W2]" value="6.0221407599999287e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W3]" value="6.0221407599999294e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W4]" value="6.0221407599999301e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W5]" value="6.0221407599999307e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W6]" value="6.0221407599999314e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W7]" value="6.0221407599999321e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W8]" value="6.0221407599999328e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W9]" value="6.0221407599999334e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[W10]" value="6.0221407599999341e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V1]" value="6.0221407599999348e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V2]" value="6.0221407599999354e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V3]" value="6.0221407599999361e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V4]" value="6.0221407599999368e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V5]" value="6.0221407599999375e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V6]" value="6.0221407599999381e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V7]" value="6.0221407599999388e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V8]" value="6.0221407599999395e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V9]" value="6.0221407599999401e+23" type="Species" simulationType="ode"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[V10]" value="6.0221407599999408e+23" type="Species" simulationType="ode"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Initial Global Quantities" type="Group">
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[p0]" value="0.45000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[q0]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[v0]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[d0]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[p1]" value="0.45000000000000001" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[q1]" value="0.050000000000000003" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[v1]" value="3" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[d1]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[d2]" value="1" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[beta0]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[beta1]" value="10" type="ModelValue" simulationType="fixed"/>
          <ModelParameter cn="CN=Root,Model=bc_model_appox,Vector=Values[tau]" value="5" type="ModelValue" simulationType="fixed"/>
        </ModelParameterGroup>
        <ModelParameterGroup cn="String=Kinetic Parameters" type="Group">
        </ModelParameterGroup>
      </ModelParameterSet>
    </ListOfModelParameterSets>
    <StateTemplate>
      <StateTemplateVariable objectReference="Model_0"/>
      <StateTemplateVariable objectReference="Metabolite_65"/>
      <StateTemplateVariable objectReference="Metabolite_64"/>
      <StateTemplateVariable objectReference="Metabolite_63"/>
      <StateTemplateVariable objectReference="Metabolite_62"/>
      <StateTemplateVariable objectReference="Metabolite_61"/>
      <StateTemplateVariable objectReference="Metabolite_60"/>
      <StateTemplateVariable objectReference="Metabolite_59"/>
      <StateTemplateVariable objectReference="Metabolite_58"/>
      <StateTemplateVariable objectReference="Metabolite_57"/>
      <StateTemplateVariable objectReference="Metabolite_56"/>
      <StateTemplateVariable objectReference="Metabolite_55"/>
      <StateTemplateVariable objectReference="Metabolite_54"/>
      <StateTemplateVariable objectReference="Metabolite_53"/>
      <StateTemplateVariable objectReference="Metabolite_52"/>
      <StateTemplateVariable objectReference="Metabolite_51"/>
      <StateTemplateVariable objectReference="Metabolite_50"/>
      <StateTemplateVariable objectReference="Metabolite_49"/>
      <StateTemplateVariable objectReference="Metabolite_48"/>
      <StateTemplateVariable objectReference="Metabolite_47"/>
      <StateTemplateVariable objectReference="Metabolite_46"/>
      <StateTemplateVariable objectReference="Metabolite_45"/>
      <StateTemplateVariable objectReference="Metabolite_44"/>
      <StateTemplateVariable objectReference="Metabolite_43"/>
      <StateTemplateVariable objectReference="Metabolite_42"/>
      <StateTemplateVariable objectReference="Metabolite_41"/>
      <StateTemplateVariable objectReference="Metabolite_40"/>
      <StateTemplateVariable objectReference="Metabolite_39"/>
      <StateTemplateVariable objectReference="Metabolite_38"/>
      <StateTemplateVariable objectReference="Metabolite_37"/>
      <StateTemplateVariable objectReference="Metabolite_36"/>
      <StateTemplateVariable objectReference="Metabolite_35"/>
      <StateTemplateVariable objectReference="Metabolite_34"/>
      <StateTemplateVariable objectReference="Metabolite_33"/>
      <StateTemplateVariable objectReference="Compartment_1"/>
      <StateTemplateVariable objectReference="ModelValue_23"/>
      <StateTemplateVariable objectReference="ModelValue_22"/>
      <StateTemplateVariable objectReference="ModelValue_21"/>
      <StateTemplateVariable objectReference="ModelValue_20"/>
      <StateTemplateVariable objectReference="ModelValue_19"/>
      <StateTemplateVariable objectReference="ModelValue_18"/>
      <StateTemplateVariable objectReference="ModelValue_17"/>
      <StateTemplateVariable objectReference="ModelValue_16"/>
      <StateTemplateVariable objectReference="ModelValue_15"/>
      <StateTemplateVariable objectReference="ModelValue_14"/>
      <StateTemplateVariable objectReference="ModelValue_13"/>
      <StateTemplateVariable objectReference="ModelValue_12"/>
    </StateTemplate>
    <InitialState type="initialState">
      0 6.0221407599999099e+23 6.0221407599999099e+23 6.0221407599999099e+23 6.022140759999914e+23 6.0221407599999146e+23 6.0221407599999153e+23 6.022140759999916e+23 6.0221407599999167e+23 6.0221407599999173e+23 6.022140759999918e+23 6.0221407599999187e+23 6.0221407599999193e+23 6.02214075999992e+23 6.0221407599999274e+23 6.0221407599999287e+23 6.0221407599999294e+23 6.0221407599999301e+23 6.0221407599999307e+23 6.0221407599999314e+23 6.0221407599999321e+23 6.0221407599999328e+23 6.0221407599999334e+23 6.0221407599999341e+23 6.0221407599999348e+23 6.0221407599999354e+23 6.0221407599999361e+23 6.0221407599999368e+23 6.0221407599999375e+23 6.0221407599999381e+23 6.0221407599999388e+23 6.0221407599999395e+23 6.0221407599999401e+23 6.0221407599999408e+23 1 0.45000000000000001 0.050000000000000003 3 1 0.45000000000000001 0.050000000000000003 3 1 1 10 10 5 
    </InitialState>
  </Model>
  <ListOfTasks>
    <Task key="Task_2" name="Steady-State" type="steadyState" scheduled="false" updateModel="false">
      <Report reference="Report_0" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="JacobianRequested" type="bool" value="1"/>
        <Parameter name="StabilityAnalysisRequested" type="bool" value="1"/>
      </Problem>
      <Method name="Enhanced Newton" type="EnhancedNewton">
        <Parameter name="Resolution" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Derivation Factor" type="unsignedFloat" value="0.001"/>
        <Parameter name="Use Newton" type="bool" value="1"/>
        <Parameter name="Use Integration" type="bool" value="1"/>
        <Parameter name="Use Back Integration" type="bool" value="0"/>
        <Parameter name="Accept Negative Concentrations" type="bool" value="0"/>
        <Parameter name="Iteration Limit" type="unsignedInteger" value="50"/>
        <Parameter name="Maximum duration for forward integration" type="unsignedFloat" value="1000000000"/>
        <Parameter name="Maximum duration for backward integration" type="unsignedFloat" value="1000000"/>
        <Parameter name="Target Criterion" type="string" value="Distance and Rate"/>
      </Method>
    </Task>
    <Task key="Task_3" name="Time-Course" type="timeCourse" scheduled="false" updateModel="false">
      <Report reference="Report_1" target="bc_model_ddeint.csv" append="0" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="1000"/>
        <Parameter name="StepSize" type="float" value="1"/>
        <Parameter name="Duration" type="float" value="1000"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
      </Problem>
      <Method name="DDEINT (Dormand-Prince 5)" type="DDEINT (Dormand-Prince 5)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_4" name="Scan" type="scan" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="Subtask" type="unsignedInteger" value="1"/>
        <ParameterGroup name="ScanItems">
        </ParameterGroup>
        <Parameter name="Subtask Output" type="string" value="subTaskDuring"/>
        <Parameter name="Adjust initial conditions" type="bool" value="0"/>
        <Parameter name="Continue on Error" type="bool" value="0"/>
      </Problem>
      <Method name="Scan Framework" type="ScanFramework">
      </Method>
    </Task>
    <Task key="Task_15" name="Elementary Flux Modes" type="fluxMode" scheduled="false" updateModel="false">
      <Report reference="Report_2" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="EFM Algorithm" type="EFMAlgorithm">
      </Method>
    </Task>
    <Task key="Task_16" name="Optimization" type="optimization" scheduled="false" updateModel="false">
      <Report reference="Report_3" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Subtask" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <ParameterText name="ObjectiveExpression" type="expression">
          
        </ParameterText>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="DisplayPopulations" type="bool" value="0"/>
      </Problem>
      <Method name="Random Search" type="RandomSearch">
        <Parameter name="Log Verbosity" type="unsignedInteger" value="0"/>
        <Parameter name="Number of Iterations" type="unsignedInteger" value="100000"/>
        <Parameter name="Random Number Generator" type="unsignedInteger" value="1"/>
        <Parameter name="Seed" type="unsignedInteger" value="0"/>
      </Method>
    </Task>
    <Task key="Task_5" name="Parameter Estimation" type="parameterFitting" scheduled="false" updateModel="false">
      <Report reference="Report_4" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Maximize" type="bool" value="0"/>
        <Parameter name="Randomize Start Values" type="bool" value="0"/>
        <Parameter name="Calculate Statistics" type="bool" value="1"/>
        <Parameter name="Create Parameter Sets" type="bool" value="0"/>
        <ParameterGroup name="OptimizationItemList">
        </ParameterGroup>
        <ParameterGroup name="OptimizationConstraintList">
        </ParameterGroup>
        <Parameter name="DisplayPopulations" type="bool" value="0"/>
        <Parameter name="Steady-State" type="cn" value="CN=Root,Vector=TaskList[Steady-State]"/>
        <Parameter name="Time-Course" type="cn" value="CN=Root,Vector=TaskList[Time-Course]"/>
        <Parameter name="Use Time Sens" type="bool" value="0"/>
        <Parameter name="Time-Sens" type="cn" value=""/>
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
      <Report reference="Report_5" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_2"/>
      </Problem>
      <Method name="MCA Method (Reder)" type="MCAMethod(Reder)">
        <Parameter name="Modulation Factor" type="unsignedFloat" value="1.0000000000000001e-09"/>
        <Parameter name="Use Reder" type="bool" value="1"/>
        <Parameter name="Use Smallbone" type="bool" value="1"/>
      </Method>
    </Task>
    <Task key="Task_7" name="Lyapunov Exponents" type="lyapunovExponents" scheduled="false" updateModel="false">
      <Report reference="Report_6" target="" append="1" confirmOverwrite="1"/>
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
    <Task key="Task_8" name="Time Scale Separation Analysis" type="timeScaleSeparationAnalysis" scheduled="false" updateModel="false">
      <Report reference="Report_7" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
      </Problem>
      <Method name="ILDM (LSODA,Deuflhard)" type="TimeScaleSeparation(ILDM,Deuflhard)">
        <Parameter name="Deuflhard Tolerance" type="unsignedFloat" value="0.0001"/>
      </Method>
    </Task>
    <Task key="Task_0" name="Sensitivities" type="sensitivities" scheduled="false" updateModel="false">
      <Report reference="Report_8" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="SubtaskType" type="unsignedInteger" value="1"/>
        <ParameterGroup name="TargetFunctions">
          <Parameter name="SingleObject" type="cn" value=""/>
          <Parameter name="ObjectListType" type="unsignedInteger" value="7"/>
        </ParameterGroup>
        <ParameterGroup name="ListOfVariables">
          <ParameterGroup name="Variables">
            <Parameter name="SingleObject" type="cn" value=""/>
            <Parameter name="ObjectListType" type="unsignedInteger" value="41"/>
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
    <Task key="Task_14" name="Moieties" type="moieties" scheduled="false" updateModel="false">
      <Report reference="Report_9" target="" append="1" confirmOverwrite="1"/>
      <Problem>
      </Problem>
      <Method name="Householder Reduction" type="Householder">
      </Method>
    </Task>
    <Task key="Task_9" name="Cross Section" type="crosssection" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <Parameter name="LimitCrossings" type="bool" value="0"/>
        <Parameter name="NumCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitOutTime" type="bool" value="0"/>
        <Parameter name="LimitOutCrossings" type="bool" value="0"/>
        <Parameter name="PositiveDirection" type="bool" value="1"/>
        <Parameter name="NumOutCrossingsLimit" type="unsignedInteger" value="0"/>
        <Parameter name="LimitUntilConvergence" type="bool" value="0"/>
        <Parameter name="ConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <Parameter name="Threshold" type="float" value="0"/>
        <Parameter name="DelayOutputUntilConvergence" type="bool" value="0"/>
        <Parameter name="OutputConvergenceTolerance" type="float" value="9.9999999999999995e-07"/>
        <ParameterText name="TriggerExpression" type="expression">
          
        </ParameterText>
        <Parameter name="SingleVariable" type="cn" value=""/>
      </Problem>
      <Method name="Deterministic (LSODA)" type="Deterministic(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="100000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
    <Task key="Task_10" name="Linear Noise Approximation" type="linearNoiseApproximation" scheduled="false" updateModel="false">
      <Report reference="Report_10" target="" append="1" confirmOverwrite="1"/>
      <Problem>
        <Parameter name="Steady-State" type="key" value="Task_2"/>
      </Problem>
      <Method name="Linear Noise Approximation" type="LinearNoiseApproximation">
      </Method>
    </Task>
    <Task key="Task_11" name="Time-Course Sensitivities" type="timeSensitivities" scheduled="false" updateModel="false">
      <Problem>
        <Parameter name="AutomaticStepSize" type="bool" value="0"/>
        <Parameter name="StepNumber" type="unsignedInteger" value="100"/>
        <Parameter name="StepSize" type="float" value="0.01"/>
        <Parameter name="Duration" type="float" value="1"/>
        <Parameter name="TimeSeriesRequested" type="bool" value="1"/>
        <Parameter name="OutputStartTime" type="float" value="0"/>
        <Parameter name="Output Event" type="bool" value="0"/>
        <Parameter name="Start in Steady State" type="bool" value="0"/>
        <Parameter name="Use Values" type="bool" value="0"/>
        <Parameter name="Values" type="string" value=""/>
        <ParameterGroup name="ListOfParameters">
        </ParameterGroup>
        <ParameterGroup name="ListOfTargets">
        </ParameterGroup>
      </Problem>
      <Method name="LSODA Sensitivities" type="Sensitivities(LSODA)">
        <Parameter name="Integrate Reduced Model" type="bool" value="0"/>
        <Parameter name="Relative Tolerance" type="unsignedFloat" value="9.9999999999999995e-07"/>
        <Parameter name="Absolute Tolerance" type="unsignedFloat" value="9.9999999999999998e-13"/>
        <Parameter name="Max Internal Steps" type="unsignedInteger" value="10000"/>
        <Parameter name="Max Internal Step Size" type="unsignedFloat" value="0"/>
      </Method>
    </Task>
  </ListOfTasks>
  <ListOfReports>
    <Report key="Report_0" name="Steady-State" taskType="steadyState" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Steady-State]"/>
      </Footer>
    </Report>
    <Report key="Report_1" name="Time-Course" taskType="timeCourse" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Header>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Description"/>
      </Header>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Time-Course],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_2" name="Elementary Flux Modes" taskType="fluxMode" separator="&#x09;" precision="6">
      <Comment>
        Automatically generated report.
      </Comment>
      <Footer>
        <Object cn="CN=Root,Vector=TaskList[Elementary Flux Modes],Object=Result"/>
      </Footer>
    </Report>
    <Report key="Report_3" name="Optimization" taskType="optimization" separator="&#x09;" precision="6">
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
    <Report key="Report_4" name="Parameter Estimation" taskType="parameterFitting" separator="&#x09;" precision="6">
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
    <Report key="Report_6" name="Lyapunov Exponents" taskType="lyapunovExponents" separator="&#x09;" precision="6">
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
    <Report key="Report_7" name="Time Scale Separation Analysis" taskType="timeScaleSeparationAnalysis" separator="&#x09;" precision="6">
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
    <Report key="Report_8" name="Sensitivities" taskType="sensitivities" separator="&#x09;" precision="6">
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
    <Report key="Report_9" name="Moieties" taskType="moieties" separator="&#x09;" precision="6">
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
    <Report key="Report_10" name="Linear Noise Approximation" taskType="linearNoiseApproximation" separator="&#x09;" precision="6">
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
  </ListOfReports>
  <ListOfPlots>
    <PlotSpecification name="bc_model" type="Plot2D" active="1" taskTypes="">
      <Parameter name="log X" type="bool" value="0"/>
      <Parameter name="log Y" type="bool" value="0"/>
      <Parameter name="x axis" type="string" value=""/>
      <Parameter name="y axis" type="string" value=""/>
      <Parameter name="z axis" type="string" value=""/>
      <Parameter name="plot engine" type="string" value="QWT"/>
      <ListOfPlotItems>
        <PlotItem name="[u0]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=bc_model_appox,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u0],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[u1]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=bc_model_appox,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u1],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
        <PlotItem name="[u2]|Time" type="Curve2D">
          <Parameter name="Line type" type="unsignedInteger" value="0"/>
          <Parameter name="Line subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Line width" type="unsignedFloat" value="1.2"/>
          <Parameter name="Symbol subtype" type="unsignedInteger" value="0"/>
          <Parameter name="Color" type="string" value="auto"/>
          <Parameter name="Recording Activity" type="string" value="during"/>
          <ListOfChannels>
            <ChannelSpec cn="CN=Root,Model=bc_model_appox,Reference=Time"/>
            <ChannelSpec cn="CN=Root,Model=bc_model_appox,Vector=Compartments[compartment],Vector=Metabolites[u2],Reference=Concentration"/>
          </ListOfChannels>
        </PlotItem>
      </ListOfPlotItems>
    </PlotSpecification>
  </ListOfPlots>
  <GUI>
  </GUI>
  <ListOfUnitDefinitions>
    <UnitDefinition key="Unit_1" name="meter" symbol="m">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_0">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        m
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_5" name="second" symbol="s">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_4">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        s
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_13" name="Avogadro" symbol="Avogadro">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_12">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_17" name="item" symbol="#">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_16">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        #
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_35" name="liter" symbol="l">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_34">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        0.001*m^3
      </Expression>
    </UnitDefinition>
    <UnitDefinition key="Unit_41" name="mole" symbol="mol">
      <MiriamAnnotation>
<rdf:RDF
xmlns:dcterms="http://purl.org/dc/terms/"
xmlns:rdf="http://www.w3.org/1999/02/22-rdf-syntax-ns#">
<rdf:Description rdf:about="#Unit_40">
</rdf:Description>
</rdf:RDF>
      </MiriamAnnotation>
      <Expression>
        Avogadro*#
      </Expression>
    </UnitDefinition>
  </ListOfUnitDefinitions>
</COPASI>
