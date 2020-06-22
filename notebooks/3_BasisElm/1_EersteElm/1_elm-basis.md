
# 3.1 De basis van elm

De code snippets in dit hoofdstuk zijn elm commando's die op de elm command line (de zogenaamde 'elm REPL') uitgevoerd kunnen worden, maar wij zullen de elm commando's door Jupyter laten uitvoeren vanuit dit Jupyter notebook: 
dat doe je door op 'run' te drukken als je dit notebook in Jupyter open hebt. 

We kunnen nu 'elm expressies' intypen die dan direct geëvalueerd worden. Om met een simpel voorbeeld te beginnen: typ in het vak hieronder het getal 42 in en druk op 'Run': 


```elm

```

Na even verschijnt de reactie: 
42 : number
ofwel REPL heeft gezien dat het resultaat 42 is en dat dit een getal (number)
is. 

Je kunt de voorbeelden uit dit hoofdstuk ook in de zogenaamde 'elm REPL' uitvoeren. Vanuit de command line (onder MS-windows of MacOS), typ: 'elm repl' om de REPL te starten. 
REPL staat voor ... (google hier eens op). Daar kun je dan een commando intypen en op de enter-toets drukken om het uit te voeren. In dit hoofdstuk heb je dat niet nodig en kun je alles vanuit dit Jupyter-notebook doen. 

Iets spannender (denk even na of je het antwoord van deze vermeningvuldiging
makkelijk zelf zou kunnen berekenen): bereken 42 maal 38

Type hiervoor 42 * 38 op de regel hieronder en druk op enter. 


```elm

```

Hee, je kunt het dus als rekenmachine gebruiken... Enfin, je bent waarschijnlijk
niet heel erg verbaasd.
Inderdaad kun je met +, -, * en / optellen, aftrekken, vermenigvuldigen en
delen.
Wat denk je dat er uitkomt als je 12 + 3 * 2 berekent?


```elm

```

Houdt elm rekening met de volgorde van berekening? Wordt eerst de
\+ of eerst \* uitgevoerd? Ofwel: is dit gelijk aan `( 12 + 3 ) * 2` of juist aan
`12 + ( 3 * 2)` ?

Als je zelf de volgorde wil aangeven kun je met behulp van haakjes zelf de volgorde van berekening kiezen: bereken hieronder zowel  12 + ( 3 * 2 )   als   ( 12 + 3 ) * 3


```elm

```


```elm

```

Als je een uitkomst wilt bewaren kun je die opslaan in een variabele: 

x = ( 12 +  3 ) * 2


```elm

```

Elm Repl vertelt je dat er 30 uitkomt en dat dat een `number` is. 
Dit lijkt op wat een variabele in de wiskunde betekent, maar is niet helemaal hetzelfde: de waarde van een variabele (bijvoorbeeld `x`) is een vaste waarde die je wilt gaan ontdekken. Bij functioneel programmeren geef je zelf de variabele een waarde. 

Er zijn echter ook verschillen met wiskunde: De naam van een variabele kan in elm ook uit meerdere letters bestaan: Als je in elm opschrijft: `xy` bedoel je een variabele met de twee-letter lange naam `xy`, terwijl in de wiskunde dan (meestal) bedoeld wordt: '(waarde van) `x` vermenigvuldigd met (waarde van) `y`'. Door variabelen met langere namen te gebruiken wordt de code leesbaarder. 

Als mijn (rechthoekige) tuin bijvoorbeeld 6 meter lang is en 4 meter breed en ik wil de oppervlakte laten berekenen, dan kan dat op een leesbare manier worden opgeschreven als: 

lengte = 6
breedte = 4
oppervlakte = lengte * breedte

Probeer dat hieronder uit: 


```elm

```

# Het type String

Run eens: 

String.fromInt( 42 * 38 )


```elm

```

en vergelijk het resultaat eens met de uitkomst die je eerder kreeg met `42 * 38`. Wat valt je op? 
Juist: er staat nu `String` achter in plaats van `number`. Dat komt omdat de uitkomst van de vermenigvuldiging in de functie 'String.fromInt' wordt gestopt, en die maakt er een string van. Een string is een _ketting_ van _characters_ (zeg maar letters, maar bijvoorbeeld een _spatie_, een _komma_, een punt en een _tab_ tellen dan ook als character, dus het zijn niet alleen maar de letters uit het alfabet). 

Het woord _functie_ is gevallen. In elm struikel je al heel snel over de functies: bijna alles wordt met functies gedaan. 
Je kunt bestaande functies aanroepen, maar ook eigen functies definiëren. 
In het volgende hoofdstuk gaan we verder in op functies. 
