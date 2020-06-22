
## 3.4 Recursie in elm

In het eerdere hoofdstuk over `Recursie` heb je al gelezen dat je met recursie een probleem kunt oplossen door het te verkleinen, of zelfs het hele probleem in kleinere (deel)problemen op te lossen. We gaan nu naar een paar voorbeelden in elm kijken. 

Stel je voor ik moet een moeilijke berekening 10x achter elkaar doen. Deze uitdaging/challenge kunnen we opsplitsen in 2 deel-challenges: Hoe kan ik 'iets' 10x doen? Hoe kan ik die moeilijke berekening 1x uitvoeren? Laten we even als simpel voorbeeld nemen het gooien met een dobbelsteen en stel we hebben een functie die 0 parameters verwacht en 1 uitkomst teruggeeft: gooiDobbelsteen()

Hoe kunnen we er nu voor zorgen dat dit 10 keer gebeurt? Misschien heb je de volgende oplossing bedacht: 

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

gooiDobbelsteen()

Leuk bedacht maar heeft een paar nadelen. Heb je bijvoorbeeld nageteld of het er wel 10 zijn? Verder kan dit bij 10 nog wel maar software moet vaak iets 100000 keer of nog vaker doen, dat werkt natuurlijk niet. Tot slot is het hoe vaak iets moet gebeuren vaak afhankelijk van een andere input... 

Enfin, terug naar recursiviteit: Als ik een functie heb die als parameter het getal '10' meekrijgt (hoe vaak het moet 
gebeuren), die 1x die actie uitvoert en vervolgens een functie zou kunnen aanroepen die (10 - 1)x ofwel 9x die actie
uitvoert, heb ik de challenge van 'iets 10x doen' verkleind tot 'iets 9x doen'. Maar hee, het aantal keren dat het 
'iets' gedaan moest worden was de waarde van de parameter, dus als de functie zichzelf zou kunnen aanroepen met een 
parameter die 1 kleiner is zijn we (bijna) klaar: 'iets 9x doen' wordt dan namelijk verkleind tot 'iets 8x doen', 
en dat weer tot 'iets 7x doen', en zo verder tot we bij 1 of 0 zijn. 

Laten we eerst eens kijken of we dat voor elkaar krijgen met een functie die een aantal streepjes (letter 'I' moet neerzetten): 

repeat n = if n > 0 then "I" ++ repeat (n-1) else ""


```elm

```

De functie verwacht een aantal (hierboven heet de parameter 'n' maar 'aantal' is misschien wel leesbaarder). We roepen de functie nu aan met parameter 3. Hij moet dus 3 streepjes zetten: 

repeat 3


```elm

```

Geloof nooit na 1 test dat een functie werkt, probeer het nog eens met parameter 8: 

repeat 8


```elm

```

Snap je hoe de functie werkt? 

Het geval n = 0 is trouwens wel een aparte, laten we die ook testen: er moeten dan dus 0 streepjes komen: 

repeat 0


```elm

```

Wat als we een negatief getal invoeren? Wat zou repeat(-2) doen? 

repeat -2


```elm

```

### 3.4.1 Recursie op een List

Bij sommige types werken recursieve functies heel handig. Voorbeelden zijn een 'List' of een zogenaamde 'Tree'. Als je bijvoorbeeld de 'lengte' (aantal elementen) van een List wilt weten kun je dat doen door middel van een functie 'lengte' dat een zogenaamd 'case'-statement gebruikt: 

lengte list =   \

  case list of \
  
  []  ->  0  \
  
  elt :: restOfList  -> ( 1 + (lengte restOfList ) )
  
(net als eerder moet je bij het kopiëren de lege tussenregel weghalen). 


```elm

```

De 'backslashes'aan het eind van de regels geven aan dat de code op de volgende regel er ook nog bij hoort. 

Stel je hebt een String en je wilt met elke letter van die String 'iets' doen. Daarvoor kun je de String-functie 'toList' gebruiken: 

String.toList "abc"


```elm

```

Merk op dat de losse karakters tussen andere quotes staan dan bij een String gebruikt worden: hiermee wordt aangegeven dat het 1 los karakter 'Char' betreft, terwijl Strings (doorgaans) niet lengte 1 hebben. 

We gaan nu kijken naar een zogenaamde 'Dictionary', een constructie die in veel programmeertalen voorkomt (in sommige talen heet het een 'Map'). Een Dictionary is een collectie van zogenaamde 'key-value'-pairs. Neem als voorbeeld een Nederlands woordenboek: hierin zitten 'keys' waarop je snel kunt zoeken, dat zijn de woorden. Bij elk woord hoort een 'value': de omschrijving van dat woord. Op de omschrijving zoeken gaat niet handig: dan begin je op een pagina en sla je elke keer een pagina om totdat je de omschrijving hebt gevonden. Een telefoonboek is ook een Dictionary: als je op naam (de key) zoekt vind je snel het bijbehorende telefoonnummer, maar als je een telefoonnummer hebt en de naam erbij wilt zoeken ben je lang bezig (bij een papieren telefoonboek tenminste). 
Als je snel 2 kanten op wilt heb je 2 Dictionaries nodig: als voorbeeld kun je denken aan een Nederlands-Frans woordenboek en voor de andere richting een Frans-Nederlands woordenboek. Google op 'elm Dictionary' voor meer kennis over Dictionary in elm. 

Als voorbeeld maken we een Dictionary die als keys de letters (als Char) van het alfabet heeft en als values de morse-code (als String) die bij die letter hoort: 

import Dict


```elm

```

en daarna: 

Dict.fromList [ ('a' , ".-") , ('b',"-...") , ('c', "-.-.") , ('e',".") , ('l',".-.."), ('m', "--")]


```elm

```

De eerste regel is nodig zodat elm weet dat je de code die al geprogrammeerd is in 'Dict' wilt gebruiken. Anders zouden we alles elke keer opnieuw moeten programmeren. 

Hierboven staan maar een paar letters gegeven, zoek zelf de Morse code voor de overige letters op. Sla het resultaat met behulp van 'morseAlfabet = ...' op in de variabele morseAlfabet (let dus op dat je geen tikfouten maakt!). Met de functie 'Dict.keys' kun je opvragen welke keys er in de Dictionary zitten. Als je het hele alfabet erin verwerkt zal het niet meer op een regel passen, gelukkig heb je eerder al gezien hoe je je code op een volgende regel door kunt laten gaan!

morseAlfabet = Dict.fromList [ ('a' , ".-") , ('b',"-...") , ('c', "-.-.") , ('e',".") , ('l',".-.."), ('m', "--")]


```elm

```

Dict.keys morseAlfabet


```elm

```

Dict.values morseAlfabet


```elm

```

geeft daarentegen de 'values' (dus de morse-codes). De morse-vertaling van een Char kun je krijgen met de functie 'Dict.get': 

Dict.get 'a' morseAlfabet


```elm

```

Dit geeft iets terug wat door elm als 'Maybe String' wordt aangeduid. Reden: als de gezochte letter 'a' niet in de Dict voorkomt weet elm niet welke String terug te geven. Om zeker te weten dat er een String terugkomt is er een manier bedacht om zelf een String mee te geven die gebruikt wordt in een dergelijk geval dat er geen logisch antwoord bestaat. Zoek eens op Dict.get withDefault in de documentatie of op internet.  

##### Challenge Morse (1)

Nu zou het mooi zijn als we een heel woord (of een hele zin) kunnen vertalen naar Morse. Schrijf hier zelf een functie voor. Gebruik hiervoor de manier om 1 Char te vertalen zoals hierboven gebruikt, gecombineerd met de functie 'String.toList' die de te vertalen String in een List van Chars omzet. Je zult ook de functies 'List.head' en 'List.tail' willen gebruiken (zie het hoofdstuk over Lists in elm). 


```elm
toMorse = 
```


```elm
toMorse "bloemkool"
```

##### Challenge Morse (2) (moeilijk)

Een extra uitdaging is het om een functie te schrijven die een gecodeerde Morse string (bijvoorbeeld: ". .-.. -- .. ... ..-. ..- -.", dus met spaties na elke letter-code) terug kan vertalen naar tekst. 

### 3.4.2 Tuples

Een functie die meerdere parameters krijgt hebben we al een paar maal gezien, maar tot nu toe kwam er altijd maar 1 waarde uit. In `elm` kan een `function` ook meerdere waarden tegelijk teruggeven. Dit heet dan een `tuple` (een Engels woord, maar je kunt het op z'n Nederlands uitspreken als `tupel`). Een `tuple` wordt geschreven als meerdere waarden met komma's ertussen en haakjes er omheen: `(a,b,c)`. Een functie die 2 parameters krijgt en zowel de som (optelling) als het product (de vermenigvuldiging) van de 2 moet teruggeven kan er als volgt uitzien: 

somEnProduct x y = ( x + y , x * y ) 

somEnProduct 3 4


```elm

```


```elm

```

### 3.4.3 Leonardo Pisano

Deze naam wel eens gehoord? Zoek er eens op met je favoriete zoek-engine. Je hebt al eerder van deze persoon gehoord onder een andere naam! 
We gaan de getallenrij van deze meneer realiseren in `elm` met behulp van de function `fibo`. Een eerder genoemde methode was iets als: 

fibo n = if n <= 2 then n - 1 else (fibo(n-1) + fibo(n-2)) 


```elm

```

Hoeveel is fibo 5? En fibo 6, fibo 7, fibo 8 en fibo 9?


```elm

```


```elm

```


```elm

```


```elm

```


```elm

```

### 3.4.3 Leonardo Pisano Advanced

Bovengenoemde functie `fibo` is wel een elegante definitie maar niet zo'n efficiënte methode van berekening omdat er namelijk veel getallen dubbel berekend worden! Met behulp van tuples kunnen we dat efficiënter maken: 
Bekijk het tuple `( fibo(n-1) , fibo(n) )` en neem de definitie erbij zie je dat je dit mag schrijven als: 
`( fibo(n-1) , fibo(n-1)+fibo(n-2) )`, waaruit volgt (misschien zie je het nog niet direct!): 
als ik een tuple heb met 2 op elkaar volgende (maar verder vrij willekeurig gekozen) fibo-getallen `( fibo(82) , fibo(83) )` kan ik het 'daaropvolgende' fibo-paar berekenen met behulp van: 

`( fibo(83) , fibo(84) )` is gelijk aan: 
`( fibo(83) , fibo(82)+fibo(83) )` 

wat we algemener kunnen opschrijven als: stel we weten dat `( fibo(m-1), fibo(m) )` de waarden `( a , b )` bevat, dan bevat het daarop volgende fibo-tuple `( fibo(m), fibo(m+1) )` de waarden `( a , a+b )`. 

Beginnen we met het eerste fibo-paar `(0,1)` 

dan is het 2e `(1,1+0)` ofwel `(1,1)`,

het 3e is `(1,1+1)` ofwel `(1,2)`,

het 4e is `(2,2+1)` ofwel `(2,3)`,

het 5e is `(3,3+2)` ofwel `(3,5)`,

het 6e is `(5,5+3)` ofwel `(5,8)`,

het 7e is `(8,8+5)` ofwel `(8,13)`.

Ik kan fibo(n) berekenen door het goede element van het tuple `( fibo(n-1) , fibo(n) , n )` eruit te nemen. 
Op [wikipedia over functional programming](https://en.wikipedia.org/wiki/Functional_programming) kun je de volgende efficiënte oplossing in functionele programmeertaal `SequenceL` lezen: 

`fib(n) := fib_Helper(0, 1, n);`

`fib_Helper(prev, next, n) := `

`  prev when n < 1 else `

`  next when n = 1 else `

`  fib_Helper(next, next + prev, n - 1); `

Als we dit in elm-notatie opschrijven krijgen we iets als: 

fiboHelper (prev,next,n) = if n < 1 then prev else if n == 1 then next else fiboHelper(next,next+prev,n-1)


```elm

```

En: 
fibo n = fiboHelper(0,1,n) 


```elm

```

##### Challenge Morse (3) (advanced)

Mocht je Morse (2) met veel plezier hebben gedaan dan kun je zelfs een manier bedenken om bij een String als ".-...-.--.-..-..-...-...-..--." (alle punten en strepen achter elkaar geplakt) álle mogelijke vertalingen terug te geven. Tip: gebruik tuples. 


```elm

```
