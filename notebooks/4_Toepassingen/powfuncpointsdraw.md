
<p>Kopieer de code uit de vorige opdracht naar de cell hier onder.</p>

<p>Voeg&nbsp; bovenaan het volgende toe:</p>

<p style="font-family: monospace;" >import Svg exposing (..)<br/>import Svg.Attributes exposing (..)</p>

<p>Vervang:</p><br/>

<div style="font-family: monospace;">

<p>view model = </p>
<p>&nbsp;    div [] 
<p>&nbsp;&nbsp;   [ input [ placeholder "numbers separated by ,", value model.content, onInput Change ] [] </p>
<p>&nbsp;&nbsp;    , div [] [ text (powfuncpointsTest model.content) ] </p>
<p>&nbsp;   ] </p>


</div>

<p>door:</p><br/>

<div style="font-family: monospace;">

<p>view model = </p>

<p>&nbsp;  div []  </p>

<p>&nbsp;&nbsp;  [ input [ placeholder "numbers separated by ,", value model.content, onInput Change ] []  </p>

<p>&nbsp;&nbsp;  , svg [ viewBox "0 0 200 200", Svg.Attributes.width "400px" ]  </p>

<p>&nbsp;&nbsp;&nbsp;     [ g [ transform "translate(100, 100) scale(1,-1)" ]  </p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;          [ polyline [ fill "none", stroke "black", points (powfuncpointsTest model.content) ] []  </p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;             , polyline [ fill "none", stroke "black", points(pointsListToString (powfuncpoints -100 1 100 [0]))] []  </p>
 
<p>&nbsp;&nbsp;&nbsp;&nbsp;             , polyline [ fill "none", stroke "black", points "0,-100 0,100"] []  </p>

<p>&nbsp;&nbsp;&nbsp;&nbsp;           ]  </p>

<p>&nbsp;&nbsp;&nbsp;     ]  </p>

<p>&nbsp;&nbsp;  ] </p>

</div>

<p>Pas <strong>powfuncpointsTest</strong> zo aan dat de test gaat voor -100 &lt;= x &lt;= 100.</p>

<h2>Uitleg</h2>

<p>In het view model maak je een svg tag. &nbsp;Binnen deze svg tag maak je een polyline aan met als punten de uitkomst van:</p>

<p><strong>model | outputData = powfuncpointsTest model.inputData</strong></p>

<p>De andere twee polylines zijn de x-as en de y-as.</p>

<p>Zie <a href="https://www.w3schools.com/graphics/svg_polyline.asp">https://www.w3schools.com/graphics/svg_polyline.asp</a> als je meer over svg en polyline wilt weten.</p>

<h2>Resultaat</h2>
<p>Run het elm programma in de cell hier onder. Je ziet het volgende:</p>

![elmex2.1.png](attachment:elmex2.1.png)

<p>In het vakje kun je de a, b en c invullen voor functies van de vorm:</p>

<p>y = ax<sup>2</sup> + bx + c</p>

<p>Vul in het vakje links onder&nbsp; 5 in en druk op Enter.</p>

<p>Je ziet nu de grafiek voor de functie y=5 voor -100 =&lt; x =&lt; 100.</p>


<p>Vul in het vakje links onder&nbsp; 1,0 in en druk op Enter.</p>

<p>Je zie nu de grafiek voor de functie y=x voor -100 =&lt; x =&lt; 100.</p>


<p>Vul in het vakje links&nbsp; onder 1,2 in en druk op Enter.</p>

<p>Je zie nu de grafiek voor de functie y=x+2 voor -100 =&lt; x =&lt; 100.</p>

<p>Vul in het vakje links&nbsp; onder 1,0,0 in en druk op Enter.</p>

<p>Je zie nu de grafiek voor de functie y=x<sup>2</sup> voor -100 =&lt; x =&lt; 100.</p>

<p>Vul in het vakje links&nbsp; onder 1,0,-4 in en druk op Enter.</p>

<p>Je zie nu de grafiek voor de functie y=x<sup>2</sup>-4 voor -100 =&lt; x =&lt; 100.</p>

<p>Vul in het vakje links&nbsp; onder 1,2,-4 in en druk op Enter.</p>

<p>Je zie nu de grafiek voor de functie y=x<sup>2</sup>+2x-4 voor -100 =&lt; x =&lt; 100.</p>

<p>Vul&nbsp; nog wat andere waardes in voor a, b en c in en kijk wat er gebeurt.&nbsp; Als je een half wilt invullen moet dat met 0.5 en een tiende met 0.1.</p>


```elm

```
