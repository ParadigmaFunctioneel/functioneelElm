# The case of the mysterious Umenum

Gevraagd een elm-functie *umEnUm* die gegeven 2 String-parameters (*voornaam* en *achternaam*) een String teruggeeft die bestaat uit de 1e letter van de voornaam, dan de 1e letter van de achternaam, dan de 2e van de voornaam, dan 2e van achternaam, 3e van voornaam enzovoort...

(dit is een variatie op een opgave uit een reeks (oorspronkelijk voor C#) genaamd
[method marathon](methodmarathon))

## Opmerking voor de docent

Door eerst  `umEnUm` te vragen en daarna `UmEnUmAchterVoor`, waarbij de hoop is dat de leerling niet als een koploze kip de code van de eerste functie kopieert maar bedenkt dat de tweede precies hetzelfde doet als de eerste maar dan met de parameters omgedraaid, maw.

```
UmEnUmAchterVoor voornaam achternaam =
  umEnUm achternaam voornaam
```

## Een volgende denkstap
Als je extra goed kijkt zie je daarna wellicht dat het resultaat van

```
umEnUm("Edsger","Dijkstra")
```

begint met de hoofdletter `E`, gevolgd door `umEnUm("Dijkstra", "dsger")` (gezien?). Dat laatste is dan weer gelijk aan `D` gevolgd door `umEnUm("dsger", "ijkstra")`, en zo voort.

In pseudo-elm kunnen we dat schrijven als:
```
umEnUm w1 w2 =
  if length(w1) = 0 then
    w2
  else
    head(w1) ++ umEnUm(w2,tail(w1))
```
waarbij `head` de 1e letter van een string teruggeeft en `tail` de rest, en `++` de concatenatie van 2 strings.

## Over naar genuine elm

In de pseudocode hierboven gebruiken we een *if*-constructie, willen we de lengte van een string bepalen, willen we strings aan elkaar plakken, het eerste karakter van een string nemen, en ook allesbehalve-het-eerste karakter.

Zoeken we eerst naar de string-bewerkingen in elm:
[Duckduckgo op 'elm string'](https://www.tutorialspoint.com/elm/elm_string.htm)
(waar 'duckduckgo' staat mag naar behoefte ook de naam van een andere zoekmachine gelezen worden).
+ `String.length(eenString)` -> de lengte van eenString.
+ `String.isEmpty`.
+ `String.slice 0 1 eenString` -> eerste karakter van de waarde van variabele eenString.
+ `String.slice 1 (len - 1) eenString` -> de `tail`  (allesbehalve het eerste karakter).


Op de site van Elm zelf vind we informatie over de [syntax van elm](https://elm-lang.org/docs/syntax). Weet de student nog wat `syntax` ook alweer was?
Voor de *if* volgen we de link *Conditionals* en zien we dat het in Elm letterlijk `if`-`then`-`else` is.

## currying

Bij functioneel programmeren wordt regelmatig `currying` gebruikt. Hierbij wordt een functie met een aantal parameters aangeroepen met minder dan dat aantal. Het resultaat is een functie die (zoveel) minder parameters verwacht.

Een eenvoudig voorbeeldje kunnen we toepassen voor de `head`: Hoewel het mogelijk is deze te definiëren als:
```
head w = String.slice 0 1 w
```
mag dit ook:
```
head = String.slice 0 1
```
Functie `slice` verwacht 3 parameters, de gecurryde versie `head` verwacht 1 parameter (en ja, ik denk dat je *gecurryde* zo schrijft).

## Of: met List en pattern matching (alternatieve manier)

Een andere manier om *umEnUm* voor elkaar te krijgen is met List. Hierkomen ook een paar typische functional programming specifics om de hoek. String naar List en terug kan met:
```
List.toString
List.fromString
```

Het idee is nu dat we de 2 Lists (met karakters) gaan `zip`pen tot 1.

Een List kan 2 vormen hebben:
+ Een lege List, genoteerd als: []
+ Een element gevolgd door een List, notatie:   a::l

Aansluitend bij deze recursieve definitie kan er aan `pattern matching` gedaan worden:

```
case list of
  [] -> emptyCase
  a::l -> nonEmptyCase
```

Als `list` de lege list is is het resultaat hiervan `emptyCase`. Als daarentegen de List niet leeg is (dus bestaat uit een eerste element, hier `a`, en 'de rest van de list', hier `l`) is het resultaat `nonEmptyCase`. In `nonEmptyCase` mogen de variabelen `a` en `l` gebruikt worden.  

De te schrijven functie `zip` kan er dus uitzien als:
```
zip l m =
  case l of
    [] -> m
    a::n -> a :: (zip m n)
```

Dit kunnen we al testen met 2 Lists met de letters erin:

```
zip ("E"::"d"::"s"::"g"::"e"::"r"::[]) ("D"::"i"::"j"::"k"::"s"::"t"::"r"::"a"::[])
```

maar helemaal 'af' is het als we definiëren
```
umEnUm w1 w2 =
  String.fromList (zip (String.toList w1) (String.toList w2))
```

En dan is het zoeken naar woorden die gezipt iets nieuws opleveren, bijvoorbeeld:

```
umEnUm "jan" "ona"
```


## Bronnen

+ [destructuring / pattern matching](https://gist.github.com/yang-wei/4f563fbf81ff843e8b1e)
