
# 3.2 Functiedefinitie in Elm

In het vorige hoofdstuk hebben we de functie 'toString' gezien. Hier werd een inputwaarde of parameter in gestopt en er komt als resultaat een outputwaarde (het resultaat) uit. Het is ook mogelijk meerdere waarden mee te geven aan een functie, en er zijn ook functies die helemaal géén input verwachten. Zoals de naam al suggereert zijn functies bij 'functioneel programmeren' erg belangrijk. 

Eigenlijk kun je in het algemeen een computerprogramma ook zien als iets wat je aanroept, waar je inputwaarden in stopt en waar dan outputwaarden uit komen. 
Bij web-apps is dit soms nog redelijk duidelijk te herkennen: het begint vaak met het in je browser intypen van een url (internetadres: bijvoorbeeld http://elm-lang.org/ ): deze url (dit is een tekst, en dus in softwaretermen een String) wordt naar een server (een computer ergens op het internet) gestuurd: deze computer krijgt dus een string als input. Er wordt een berekening gedaan ('functie uitgevoerd') en het resultaat (de outputwaarde) is een html-pagina (ook een String), die terug wordt gestuurd naar jouw computer, jouw browser om precies te zijn, die de html-pagina op je scherm toont. 

Als je er op deze manier over na gaat denken zul je zien dat je veel acties die een computer(programma) uitvoert kunt zien als het uitvoeren/aanroepen van een functie. 

OK, nog een voorbeeldje dan: je dacht misschien hierboven: ja, maar in dat html-scherm staat een knop en een knop is echt iets anders dan een tekst. Je hebt vast ooit naar de 'sources' van een web-pagina hebt gekeken (je hebt vast al html gehad maar anders ook sowieso nuttig, en elke browser heeft hier wel een optie voor, iets als 'view source') heb je gezien dat een button daar terugkomt in iets wat in essentie lijkt op: &lt;button name="buttonPressMe" action="doSomething()"/&gt;, dus zelfs een button in een html-page is een String. 
Het komt er eigenlijk op neer dat de browser de String die terugkomt van de server als inputwaarde neemt voor zijn 'functie' ShowPage(receivedHtml) en als output de 'page' geeft die je op scherm ziet. In die getoonde page zitten andere dingen dan tekst, er kunnen buttons, textboxes, pictures, listboxes en nog veel meer zichtbaar zijn, maar de omschrijving van wát er te zien is komt dus uit de html-String.

Je kunt ook zelf nieuwe functies erbij programmeren. Met bijvoorbeeld: 

telTweeOpBij x = x + 2
(voer dit hieronder uit)


```elm

```

wordt een nieuwe functie telTweeOpBij (deze naam kun je dus zelf kiezen)
gedefinieerd. 
Na deze definitie kun je schrijven: 

telTweeOpBij 5


```elm

```

Komt hier uit wat je verwacht?
Onthoud de functie 'telTweeOpBij', we komen hier op terug bij het hoofdstuk over Lists.

We hadden in plaats van telTweeOpBij ook kunnen schrijven: 

( \x -> x + 2 )


```elm

```

waarbij x -> x + 2 eigenlijk wil zeggen: wat er in gaat noemen we x en er
komt uit x + 2. Je kunt dit vergelijken met een functie f in de wiskunde: 

f(x) = x + 2

alleen heeft de functie x -> x + 2 geen naam. Bij de definitie van telTweeOp-
Bij een stukje terug hadden we de functie wel een naam gegeven (namelijk
telTweeOpBij). Herhalen we nu die definitie maar dan met naam f in plaats
van telTweeOpBij dan staat er: 

f x = x + 2


```elm

```

Hee, da’s bijna wiskunde!? 

We hebben nu dus 2 manieren gezien om een functie te definiëren:


```elm
f x = x + 2
```


```elm
\x -> x + 2
```

De eerste definieert functie f en de tweede heeft geen naam, is anoniem. We
noemen die tweede definitie dan ook een anonymous function.


## Leonardo Pisano nog een keer...

Als je niet weet wie Leonardo Pisano is zou ik er eens op googlen, hij is al eerder aan bod gekomen, zij het onder een andere naam... 

Enfin, de eerder getoonde formule hier op de `Elm`-manier: 

fibo n = if n <= 2 then n - 1 else (fibo ( n - 1 ) ) + ( fibo (n-2) )


```elm

```

Waarna het zoveelste `fibo`-getal op te vragen is met `fibo zoveel`: 
dus bijvoorbeeld 
fibo 1, 
fibo 5,
fibo 38.


```elm

```

# Tweedegraads vergelijking

Zoals je bij wiskunde hebt geleerd kun je de zogenaamde tweedegraads vergelijking: 

a*x^2 + b*x + c = 0

oplossen door allereerst de discriminant D = b^2 - 4*a*c uit te rekenen. Als D kleiner
dan 0 is is er geen reële oplossing, als D 0 of groter is zijn er 2 oplossingen
(die voor D=0 aan elkaar gelijk zijn).

Definieer een functie discriminant die gegeven 3 getallen (inderdaad: a, b, c)
de discriminant berekent: 

discriminant a b c = (b * b) - (4 * a * c)


```elm

```

Voor de leesbaarheid is het goed hier de haakjes te zetten!

Zou 38*x^2 + 12*x + 6 oplossingen hebben? 

Vraag het elm met behulp van de aanroep: 

discriminant 38 12 6


```elm

```

Als het antwoord groter dan 0 is zijn er 2
verschillende oplossingen voor x, als het antwoord 0 is is er 1 oplossing en als
het antwoord begint met een - is er geen (reële) oplossing.

Merk op dat elm de discriminant ziet als een functie van het type

`number -> number -> number -> number`

wat wil zeggen dat de functie achtereenvolgens 3 parameters verwacht!
Het is dus mogelijk voor tweedegraads vergelijkingen waarbij er géén getal
(ofwel een 1) voor de x-kwadraat staat een alternatieve functie te definiëren
om de discriminant te berekeningen (noemen de dit de eenheidsdiscriminant)
door middel van


```elm
eenheidsdiscriminant = discriminant 1
```

wat dus eigenlijk betekent dat de eenheidsdiscriminant de normale discriminant
is met voor de a vast 1 ingevuld. Dat wil zeggen dat


```elm
discriminant 1 10 2
```

gelijk moet zijn aan


```elm
eenheidsdiscriminant 10 2
```

Is dat ook zo?

# Challenge abc
Dat was de discriminant. Volgende stap is het construeren van een functie die de oplossingen zelf teruggeeft. Ken je de 'abc-formule' nog? (of misschien ken je hem onder de naam 'het Kanon' of 'de wortelformule') Zo niet, zoek hem op en bedenk hoe je dit aan zou kunnen pakken. 

Een tip die daarbij zou kunnen helpen is dat een functie in Elm meerdere waarden terug kan geven! We noemen dat dan een tuple: Een functie kan bijvoorbeeld teruggeven ( x1, x2 ) 
dat zouden dan de 2 oplossingen van de tweedegraadsvergelijking kunnen zijn. 
Als je op internet hierop gaat zoeken zou je de keywords 'elm tuple' kunnen gebruiken. 
Probeer dit eens uit te werken. Eventueel zou je een tuple met 3 waarden kunnen teruggeven: eerste waarde geeft aantal oplossingen terug (0, 1, of 2), en de volgende 2 waarden in de tuple zijn dan de zogenaamde x1 en x2 (dus de oplossingen van de vergelijking). 
