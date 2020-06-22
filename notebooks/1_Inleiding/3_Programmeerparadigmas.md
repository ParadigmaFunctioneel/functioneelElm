
## 1.3 Programmeer paradigma's

In het vorige hoofdstuk werd verteld dat er vaak verschillende manieren zijn om een probleem op te lossen. Bij de ene manier zal er wezenlijk anders worden gewerkt dan bij een andere manier. Een zienswijze die bepalend is voor de manier waarop het probleem wordt opgelost werd hierbij aangeduid als een paradigma.

Ook bij het ontwikkelen van software is het mogelijk om op totaal verschillende manieren te werken aan een gewenste oplossing. De manier waarop de voorgelegde problematiek wordt benaderd en de manier waarop van hieruit gewerkt gaat worden aan een gewenste oplossing, wordt eveneens een paradigma genoemd. De keuze voor de ontwikkelomgeving waarmee een oplossing gerealiseerd zal gaan worden hangt af van het gekozen paradigma.

In het eerste hoofdstuk werd genoemd dat het mogelijk is om programmeertalen te onderscheiden in generaties. Een andere, zinvolle, onderverdeling in programmeertalen is een verdeling in programmeerparadigma's. Een onderverdeling van programmeertalen in paradigma's helpt bij de keuze van een ontwikkelomgeving; wanneer je hebt besloten volgens welk paradigma je een softwareoplossing gaat ontwikkelen, kan je een geschikte ontwikkelomgeving selecteren. Om een bruikbare indeling te kunnen maken wordt onderscheid gemaakt in een aantal standaard programmeer paradigma's. In deze syllabus worden de belangrijkste paradigma's benoemd. Bij ieder paradigma wordt in het kort besproken wat de kenmerkende karakteristieken zijn. Tenslotte wordt ingezoomd op één van de paradigma's.

### 1.3.1 Imperatief vs. declaratief programmeren

Er bestaat geen eenduidige onderverdeling in programmeerparadigma's. In deze syllabus is uitgegaan van een verdeling waar de meeste boeken, onderzoeksverslagen en overige publicaties het in grote lijnen over eens zijn. In deze verdeling wordt er een primair onderscheid gemaakt in twee paradigma's: imperatief programmeren en declaratief programmeren. Binnen elke van de twee primaire paradigma's wordt vervolgens weer onderscheid gemaakt tussen verschillende onderliggende paradigma's. De paradigma's binnen een primair paradigma hebben geheel eigen concepten, maar de typerende kenmerken van een primair paradigma gelden ook voor alle paradigma's die eronder vallen.

#### 1.3.1.1 Imperatief programmeren
Imperatief programmeren wordt gekarakteriseerd door programmeren met een toestand en met commando's die de toestand veranderen. De toestand van een systeem is vastgelegd in de gegevens waarmee wordt gewerkt (de variabelen) en de waarden van deze gegevens. De commando's die een toestand veranderen zijn de opdrachten die door het systeem moeten worden uitgevoerd. Het is bij imperatief programmeren duidelijk welke commando's moeten worden uitgevoerd en in welke volgorde (en onder welke voorwaarden) dit moet gebeuren. Een toestandsbeschrijving van een systeem bevat naast alle relevante informatie over de gegevens waarmee het systeem werkt, ook informatie over de opdracht die door het systeem moet worden uitgevoerd.

De drie belangrijkste bouwstenen bij het imperatief programmeren zijn:
* een sequentie
* een selectie
* een iteratie

##### Sequentie
Onder een sequentie wordt verstaan een enkelvoudige opdracht die moet worden uitgevoerd. Mogelijk resulteert de uitvoering van een sequentie in een verandering van gegevenswaarden. Er zijn echter ook opdrachten die de waarden van de gegevens ongemoeid laten, zoals een output-sequentie waarmee iets wordt getoond (uitvoer). Nadat een sequentie is uitgevoerd zal het systeem verder gaan met het uitvoeren van het volgende commando.

##### Selectie
In een aantal gevallen zullen één of meerdere elementaire opdrachten uitsluitend onder bepaalde voorwaarden worden uitgevoerd. Imperatieve programmeertalen hebben één of meerdere mechanismen waarmee dit kan worden ingevuld: if, else, elseif, case.

##### Iteratie
Imperatieve programmeertalen bieden de mogelijkheid om één of meerdere opdrachten herhaaldelijk te laten uitvoeren: een iteratie. Er zijn twee manieren waarop een iteratie kan worden vormgegeven: een herhaallus met een test vooraf en een herhaallus met een test achteraf. Het grote verschil tussen deze twee vormen is dat bij een herhaallus met een test achteraf de opdrachten binnen de iteratie minstens één keer worden uitgevoerd (in een iteratie met een test vooraf is het mogelijk dat de opdrachten binnen de iteratie helemaal nooit uitgevoerd zullen worden). In sommige programmeertalen wordt een iteratie met een test vooraf vormgegeven met een zolang constructie (waarin de doorgaan-conditie wordt getest) en een iteratie met een test achteraf met een totdat constructie (waarin de stop-conditie wordt getest). In andere programmeertalen worden beide soorten iteraties met een zolang-lus vormgegeven.
Vrijwel alle imperatieve programmeertalen bieden tenslotte de mogelijkheid om één of meerdere opdrachten een vast aantal keer uit te laten voeren: een for-lus. Conceptueel is dit niet wezenlijk anders dan een iteratie met een test vooraf.

##### 1.3.1.1.1 Gestructureerd vs. ongestructureerd programmeren
Het is vanaf de eerste imperatieve programmeertalen mogelijk geweest om met behulp van sprong opdrachten (goto-statements) te bepalen waar de uitvoering van de programmacode moet worden vervolgd. In de allereerste imperatieve programmeertalen werden goto-opdrachten onder meer gebruikt ten behoeve van selecties en iteraties. Daarnaast werden sprongopdrachten echter ook op andere manieren toegepast. Het gebruik van deze sprongopdrachten resulteerde veelal in onleesbare en nauwelijks onderhoudbare programmacode. Toonaangevende informatici zoals Edsger Dijkstra en Michael A. Jackson hebben een onderscheid gemaakt tussen gestructureerd en ongestructureerd programmeren, waarbij het verschil vrijwel volledig werd bepaald door het wel of niet gebruiken van sprongopdrachten. Onder gestructureerd programmeren wordt verstaan het imperatief programmeren waarbij uitsluitend gebruik wordt gemaakt van sequenties, selecties en iteraties.

##### 1.3.1.1.2 Procedureel programmeren
Één van de imperatieve programmeerparadigma's is het procedureel programmeren. Programmeertalen binnen dit paradigma zijn gestructureerde programmeertalen waarin een mogelijkheid wordt geboden om te werken met subroutines.

Een subroutine is, binnen de context van programmeren, een verzameling van een aantal samenhangende programma instructies die samen een bepaalde taak uitvoeren. Een subroutine is als een eenheid vormgegeven, met een eigen naam. Binnen procedurele programmeertalen wordt de mogelijkheid geboden om een dergelijke subroutine aan te roepen vanaf iedere plek in het programma waar het nodig is om de code uit deze subroutine uit te voeren. Op het moment dat een subroutine wordt aangeroepen, wordt de code binnen de betreffende subroutine uitgevoerd. Na uitvoering van de laatste opdracht binnen de subroutine zal het programma terugspringen naar de plek in het programma vanwaar de subroutine werd aangeroepen. De uitvoering van het programma gaat verder met de opdracht direct na de subroutine aanroep.

Subroutines kunnen worden gedefinieerd direct bij het programma dat gebruik maakt van deze subroutines. Het is ook mogelijk om subroutines (eventueel samen met andere subroutines) te definiëren in een eigen bibliotheek. In dat laatste geval zal in een programma moeten worden aangegeven dat er gebruik wordt gemaakt van deze bibliotheek om een aanroep te kunnen doen naar een dergelijke subroutine.

Het is in vrijwel alle procedurele programmeertalen mogelijk om vanuit een subroutine, een aanroep te doen naar een andere subroutine. Het is bovendien vaak zelfs mogelijk om een subroutine zichzelf aan te laten roepen. Dit laatste mechanisme wordt 'recursie' genoemd. Dit verschijnsel zal later in deze module nog uitvoerig aan bod komen.

Het concept van subroutines is in procedurele programmeertalen op verschillende manieren vormgegeven. Namen die worden gebruikt om subroutines te definiëren zijn onder meer: procedure, sub en function. Ook wordt het begrip method gebruikt, maar in de regel is dit een begrip wat vooral betekenis heeft binnen object georiënteerd programmeren (een method is hierin gedrag dat aan een specifieke klasse is verbonden). De verschillen in de vormgeving van het werken met subroutines binnen de diverse procedurele programmeertalen zijn veelal verschillen in details. Er zijn nauwelijks conceptuele verschillen aan te wijzen.

In vrijwel alle procedurele programmeertalen wordt impliciet of expliciet onderscheid gemaakt tussen subroutines die een resultaatwaarde teruggeven (functies) ten opzichte van subroutines die geen resultaatwaarde teruggeven (procedures). In de regel is de resultaatwaarde van een functie één gegeven van een bepaald gegevenssoort. Door het gebruik van een samengestelde gegevenssoort is het veelal toch mogelijk om meerdere waarden terug te geven als resultaat van een subroutine.

Naast het onderscheid tussen subroutines met wel of geen resultaatwaarde, is er nog een aantal relevante aandachtspunten bij het gebruik van subroutines. Het gaat hierbij in het bijzonder om het gebruik van gegevens binnen de verschillende subroutines. Bij de definitie en declaratie van gegevens wordt onderscheid gemaakt in het bereik van gegevens: de 'scope' van variabelen. Globale variabelen zijn gegevens waarvan de waarde op iedere plek binnen het programma direct benaderd (opgevraagd en/of gemuteerd) kunnen worden. Gegevens die uitsluitend binnen een subroutine kunnen worden gebruikt, worden lokale variabelen genoemd. Bij lokale variabelen wordt bovendien onderscheid gemaakt tussen lokale variabelen die hun waarde behouden na het verlaten van een subroutine en lokale variabelen waarvan de waarde verloren gaat zodra een subroutine wordt beëindigd.

Een belangrijk mechanisme binnen het procedurele programmeren is de overdracht van de benodigde gegevens om een bepaalde subroutine uit te kunnen voeren. Het doorgeven van de benodigde gegevens wordt parameteroverdracht genoemd. Er zijn twee verschillende mogelijkheden om gegevens door te geven bij de aanroep van een subroutine: *call by value en call by reference:*

| Begrip | Omschrijving |
| --- | --- |
| call by value: | Bij dit mechanisme wordt niet een variabele zelf meegegeven, maar uitsluitend de waarde van een variabele wordt doorgegeven aan de aangeroepen subroutine. Dit betekent dat er binnen de subroutine gebruik kan worden gemaakt van de betreffende waarde. Mutaties aan deze waarde zullen echter geen effect hebben op de oorspronkelijke variabele waarvan de waarde was doorgegeven. Er wordt bij de aanroep van de subroutine als het ware een kopie van de variabele doorgegeven. |
| call by reference: | Bij dit mechanisme wordt een variabele zelf daadwerkelijk meegegeven bij het aanroepen van een subroutine. Dit betekent dat er binnen de subroutine gebruik kan worden gemaakt van de waarde van de betreffende variabele. Bovendien zullen veranderingen van deze waarde ook in de oorspronkelijke variabele worden aangepast. In het geval van call by reference is het dus mogelijk dat de waarde van de variabelen die als parameters zijn meegegeven bij de aanroep van een subroutine na afloop gewijzigd zullen zijn. Bij call by reference wordt er dus geen kopie van een variabele meegegeven, maar (een verwijzing naar) de variabele zelf. |

**Werkopdrachten**
 >Geef enkele typerende voorbeelden van subroutines zonder resultaatwaarde ('procedures') en subroutines met resultaatwaarde ('functies').


```elm

```

 >Geef enkele typerende voorbeelden van gegevens die by value meegegeven worden bij een subroutines aanroep en gegevens die by reference moeten worden meegegeven.


```elm

```

##### 1.3.1.1.3	Object georiënteerd programmeren

Er is binnen het imperatief programmeren nog een tweede paradigma: object georiënteerd programmeren. Bij het procedureel programmeren is er sprake van een strikte scheiding tussen data en processen; data en processen worden los van elkaar gestructureerd. Hierin is object oriëntatie wezenlijk anders: de gegevens en de bijbehorende bewerkingen worden samen als één geheel opgeslagen.

Het is lastig om aan te geven waar de oorsprong van het object georiënteerd programmeren ligt; er zijn verschillende startpunten met verschillende invalshoeken. Begin jaren 60 in de vorige eeuw werd door Ole-Johan Dahl en Kristen Nygaard een programmeertaal ontwikkeld (Simula). Hiertoe werd de (imperatieve) programmeertaal Algol uitgebreid met concepten die vergelijkbaar zijn met wat wij tegenwoordig beschouwen als de basis elementen binnen het object georiënteerd programmeren (klassen en objecten).

In de jaren 70 werd door het Palo Alto Research Center (PARC) van Xerox een nieuwe object georiënteerde programmeertaal ontwikkeld: Smalltalk. Dat het verschil van het object georiënteerd programmeren ten opzichte van het procedureel programmeren zo op het eerste oog niet een direct opmerkelijk verschil lijkt, blijkt wel uit het verslag van Steve Jobs (medeoprichter van Apple) na afloop van zijn bezoek aan PARC in 1979. Tijdens dit bezoek maakte Jobs kennis met drie revolutionaire technologische ontwikkelingen: de eerste grafische user interfaces voor computers, object georiënteerd programmeren en het Alto computernetwerk. Steve Jobs vertelde hierover:
"And they showed me really three things. But I was so blinded by the first one, I didn't even really see the other two. One of the things they showed me was object orienting programming… they showed me that but I didn't even see that."

In de jaren zeventig groeide de OO aanhang nog langzaam. In de jaren 80 kwamen er meer object georiënteerde programmeertalen zoals CLOS (1983), Object Pascal en Objective-C (1984) en C++ en Eiffel (1985). Mede door de aandacht voor object oriëntatie in een bredere context (databases, analyse, ontwerp) en door eenduidige standaards  (Object Management Group, 1989) begon de populariteit van deze manier van systeemontwikkeling toe te nemen.
Inmiddels zijn er talloze object georiënteerde programmeertalen en ontwikkelomgevingen. Bekende C-achtige object georiënteerde programmeertalen zijn Java en C#. Ook (scripting)talen zoals Python, Ruby, en PHP bieden mogelijkheden om object georiënteerd te programmeren.

Bij object oriëntatie als programmeer paradigma wordt een systeem gezien als een verzameling samenwerkende objecten die voldoende van zichzelf en elkaar weten om hun eigen taak binnen het systeem (hun verantwoordelijkheid) waar te kunnen maken.  Objecten hebben de mogelijkheid om elkaar hiertoe diensten te vragen en te leveren zonder kennis te hebben van elkaars interne structuur.

Belangrijke begrippen bij het object georiënteerd programmeren zijn:
* objecten
* klassen
* inkapseling
* berichten
* methoden
* relaties (associaties)
* samenstellingen (aggregaties en composities)
* generalisaties en specialisaties (superklassen en subklassen)
* polymorfisme

Aan de hand van voorbeelden uit de dagelijkse schoolpraktijk wordt de betekenis van deze begrippen geïllustreerd:

##### Klassen
Met het begrip 'klasse' wordt bedoeld een beschrijving van de gegevens (properties) en een beschrijving van het gedrag van een soort entiteiten binnen het systeem. Voorbeelden van klassen zijn: leerling, docent, klas, vak, lesgroep, lokaal.
Voorbeelden van gegevens die iedere leerling heeft zijn: een leerlingnummer, een naam, een geboortedatum, een adres, een klas (stamgroep) en een mentor.
Het gedrag van een leerling wordt bepaald door de berichten die je naar een leerling kan sturen (de vragen die je aan een leerling kan stellen / de opdrachten die je een leerling kan geven). Voorbeelden hiervan zijn: "Hoeveel uur ben je afwezig geweest de afgelopen drie maanden?", "Wat zijn jouw rapportcijfers van de afgelopen periode?" en "Wat voor een les heb jij vandaag het derde uur?".

##### Objecten
Een object is een concreet geval van een bepaalde klasse, een klasse-instantie. Voorbeelden van objecten zijn: Jan Punt uit 3HC (een object van de klasse leerling), dhr. R. van Rooijen (een object van de klasse docent), informatica (een object van de klasse vak) of lokaal 21 (een object van de klasse lokaal).

##### Inkapseling
Een van de belangrijkste kenmerken van object oriëntatie is inkapseling. Hiermee wordt bedoeld dat de gegevens zijn afgeschermd. Alleen een object zelf kan deze afgeschermde gegevens benaderen. Wanneer informatie van een object gebruikt (of eventueel aangepast) moet worden door andere objecten, dan moet dit gedaan worden door het object hier om te vragen (of hier opdracht toe te geven). Het gevolg hiervan is dat objecten geen kennis hoeven te hebben van de interne gegevensstructuren van andere objecten. Dit leidt tot een betere onderhoudbaarheid en uitbreidbaarheid van object georiënteerde systemen tov procedurele (niet object georiënteerde) systemen.

##### Berichten
De vragen die aan objecten kunnen worden gesteld en de opdrachten die aan objecten kunnen worden gegeven worden berichten (messages) genoemd. Alle berichten van de objecten van een bepaalde klasse vormen samen de interface van deze objecten. Met het versturen van berichten aan objecten wordt aangegeven <u>**wat**</u> er moet worden gedaan.
Een voorbeeld van een bericht voor een leerling is:
```
    GeefAbsentie (periode)	    //  Hiermee wordt aan een leerling gevraagd hoeveel lesuur 
                                    deze leerling heeft gemist in de gegeven periode.
```
Een voorbeeld van een bericht voor een docent is:
```
	ZetBevoegdheid (vak, graad) //  Hiermee krijgt een docent de opdracht om de bevoegdheid 
                                    voor een bepaald vak in te stellen..
```

##### Methoden
Een object reageert op een bericht door één of meerdere opdrachten uit te voeren. De manier waarop een object van een bepaalde klasse reageert op een bericht wordt een methode (method) genoemd. Met berichten (messages) wordt dus aangegeven wat er moet gebeuren; de methoden (methods) bepalen <u>**hoe**</u> dit gebeurt.

Bij het voorbeeld van een bericht voor de leerling (GeefAbsentie) werd dus alleen bepaald wat er moest gebeuren. De manier waarop een leerling tot het gevraagde antwoord komt is de methode van de leerling die hoort bij dit bericht. Mogelijk zet een leerling bij iedere dag waarop hij/zij afwezig is geweest een aantal streepjes (één streepje per gemiste les). In dat geval zal een leerling voor het geven van de absentie alle dagen in de gevraagde periode moeten aflopen om alle streepjes bij elkaar op te tellen. Het is in het geval van vooraf vastgestelde periodes ook mogelijk dat een leerling voortdurend het periodetotaal bijwerkt; in dat geval kan de vraag direct worden beantwoord.

Als de manier waarop een leerling de absentie bijhoudt moet worden aangepast, dan hoeft er uitsluitend bij de leerling iets gewijzigd te worden. Objecten van andere klassen die via het bericht GeefAbsentie gebruik maken van de absentie informatie van leerlingen hoeven niet te worden aangepast. Het is wel belangrijk dat het bericht GeefAbsentie (periode) hetzelfde blijft.

##### Relaties (associaties)
Een object georiënteerd systeem is ontworpen als een verzameling van samenwerkende objecten. Objecten hebben hiertoe een relatie met elkaar. Een structurele relatie tussen objecten wordt een associatie genoemd. Voorbeelden van associaties zijn:

* Docent is mentor van Leerling
* Les is geroosterd in Lokaal
* Lesgroep krijgt les van Docent

Het is voor een associatie belangrijk dat de objecten elkaar kennen. In de regel wordt dit geregeld door de objecten naar elkaar te laten verwijzen, zodat het ene object de methoden van een ander object kan aanroepen.

Het is ook mogelijk dat de gegevens over de associatie bijgehouden worden in een afzonderlijke klasse, een zogenaamde associatieklasse. Een voorbeeld hiervan is een toetsresultaat (als associatieklasse van de relatie heeft toets gemaakt tussen een leerling en een vak). De datum waarop de toets is afgenomen en de beoordeling van de toets zouden dan eigenschappen kunnen zijn van een toetsresultaat.
Objecten van een associatieklasse kunnen ook weer relaties hebben met andere objecten. Een voorbeeld van een associatie van een toetsresultaat is is nagekeken door, waarmee een relatie van een toetsresultaat met een docent wordt aangeduid.

##### Samenstellingen (aggregaties en composities)
Het is mogelijk dat een object van een bepaalde klasse andere objecten bevat. In dat geval is sprake van een samenstelling. Binnen object oriëntatie wordt onderscheid gemaakt in twee soorten samenstellingen: aggregaties en composities. Het verschil tussen deze twee soorten samenstellingen ligt in de vraag of de objecten binnen de samenstelling ook buiten de samenstelling om kunnen bestaan.

Begrip | Omschrijving
--- | --- 
Aggregatie | Een lesgroep bestaat uit een aantal leerlingen en een docent; leerling-objecten in deze klas zouden binnen dit systeem wel degelijk ook zonder deze klas een rol van betekenis kunnen spelen.
Compositie: | Een schoolgebouw bestaat uit lokalen; het is ondenkbaar dat er sprake zou zijn van een lokaal zonder bijbehorend gebouw. Typerend voor de objecten binnen een compositie is dat deze objecten tot slechts één samenstelling kunnen behoren.

Het onderscheid tussen aggregatie en compositie is onder meer belangrijk om te bepalen wat er moet gebeuren wanneer een object wordt verwijderd uit het systeem: moeten in dat geval ook alle objecten die deel uitmaken van dit samengestelde object worden verwijderd?
 
Het is niet altijd heel duidelijk vast te stellen of er sprake is van een aggregatie of een compositie. Zo zal een leerling een docent uitsluitend als onderdeel van het personeel van de school beschouwen (zodra de school niet meer bestaat, zal de docent ook verdwijnen uit de belevingswereld van deze leerling). De echtgenoot/echtgenote van een docent zal hier echter heel anders over denken…

##### Generalisaties en specialisaties (superklassen en subklassen)
Soms zijn objecten uit een klasse een bijzonder gevallen van een andere klasse. Zo is het mogelijk om een klasse te definiëren als algemene beschrijving van een leerling. Je kan je voorstellen dat er bepaalde kenmerken zijn die uitsluitend van toepassing zijn op brugklasleerlingen. Probeer om zelf voorbeelden te verzinnen van dergelijke brugklas specifieke kenmerken. Ook zullen leerlingen in het eindexamenjaar wellicht enkele eigenschappen hebben die niet van toepassing zijn op de overige leerlingen (kan je hier voorbeelden van verzinnen?). In dit voorbeeld zijn eindexamenleerlingen en brugklasleerlingen bijzondere gevallen van 'gewone' leerlingen. Alle gegevens (properties), berichten (messages) en methoden (methods) van een leerling gelden ook voor brugklasleerlingen en leerlingen in een eindexamenjaar. Brugklasleerlingen hebben daarnaast nog enkele aanvullende gegevens/berichten/methoden. Dit geldt dus ook voor leerlingen in het eindexamenjaar.

Het verschijnsel van 'bijzonder gevallen van' wordt binnen object oriëntatie aangeduid met de begrippen generalisatie en specialisatie. Hierbij wordt de algemene klasse beschouwd als de generalisatie en de bijzonder gevallen als specialisaties. Door bij een klasse aan te geven dat het een bijzonder geval is van een eerder gedefinieerde algemene klasse, wordt bepaald dat alle kenmerken (properties/messages/methods) van de algemene klasse ook van toepassing zijn op deze bijzondere klasse. Het grote voordeel hiervan is dat de algemene eigenschappen slechts op één plek beschreven hoeven te worden (namelijk bij de beschrijving van algemene klasse); het is niet nodig om alle algemene eigenschappen voor ieder bijzonder geval opnieuw te definiëren.

In het algemeen wordt de algemene klasse een superklasse genoemd; bijzondere gevallen hiervan worden aangeduid met het begrip subklasse. De term overerving (inheritance) wordt gebruikt voor het mechanisme het waarbij subklassen de eigenschappen en het gedrag van een superklasse overnemen.

Het is mogelijk dat een klasse een bijzonder geval (een subklasse) is van verschillende algemene gevallen (superklassen). Dit verschijnsel wordt meervoudige overerving (multiple inheritance) genoemd. Niet iedere object georiënteerd programmeertaal ondersteunt het mechanisme van meervoudige overerving.

##### Polymorfisme
's Morgens om 5 voor half 9 gaat de schoolbel. Leerlingen verplaatsen zich naar het lokaal waar ze het eerste uur les hebben. De docenten zijn op dat ogenblik al in het lokaal en doen de deur van het lokaal open. De rector loopt naar de ingang van de school om de leerlingen die te laat komen op te vangen. Het onderwijs ondersteunend personeel verzamelt zich in de vergaderzaal voor de dagelijkse stand-up om in een kwartiertje de bijzonderheden van de dag door te nemen.

Het is mogelijk dat objecten uit verschillende klassen kunnen reageren op een gelijk bericht. In het hiervoor genoemde voorbeeld kan je de bel die gaat beschouwen als een bericht dat wordt gestuurd; dit bericht is bedoeld voor alle leerlingen en alle personeelsleden. Om de objecten van verschillende klassen te kunnen laten reageren op een bericht is het nodig dat dit bericht is opgenomen in de interface van al deze klassen. Zoals eerder is uitgelegd, is de manier waarop de objecten reageren beschreven in de methode van de klassen. Het is heel goed mogelijk dat de manier van reageren door objecten van de ene klasse anders zal zijn dan de manier van reageren van objecten die tot een andere klasse behoren. Dit verschijnsel wordt polymorfisme genoemd.

Polymorfisme wordt in het bijzonder gebruikt voor objecten van verschillende subklassen onder één gemeenschappelijke superklasse. Op superklasse niveau wordt dan doorgaans het bericht gedefinieerd; in de subklassen worden de methoden uitgewerkt die bij deze berichten horen.

##### Werkopdracht
>Noem voorbeelden van de begrippen uit het object georiënteerd programmeren die te maken hebben met een pretpark (zoals Walibi of de Efteling). Geen voorbeelden van:    
*	Objecten
*	Klassen
*	Inkapseling
*	Berichten
*	Methoden
*	Relaties (associaties)
*	Samenstellingen (aggregaties en composities)
*	Generalisaties en specialisaties (superklassen en subklassen)
*	Polymorfisme


```elm

```

#### 1.3.1.2 Declaratief programmeren

Een imperatieve programmeertaal bestaat dus uit opdrachten die in een bepaalde volgorde door de computer moeten worden uitgevoerd. Een imperatieve programmeertaal beschrijft dus wat er moet gebeuren. Een totaal andere manier van programmeren is het declaratief programmeren. In plaats van te beschrijven wat er moet gebeuren, wordt in declaratieve programmeertalen beschreven wat er aan de hand is; de bouwstenen van een declaratieve taal zijn geen opdrachten maar beschrijvingen en mogelijk samengestelde beschrijvingen.

Illustratief voor het verschil tussen imperatief en declaratief programmeren is hoe je een leerling naar een lokaal ergens in het schoolgebouw laat gaan. Een imperatieve aanpak zou bijvoorbeeld kunnen zijn: "loop net zolang vooruit totdat je door de klapdeuren bent, sla dan linksaf, loop door tot het einde van de gang, sla rechtsaf, loop door tot de derde deur aan je linkerhand". Een manier om het declaratief te doen is: je geeft de leerling een plattegrond van het gebouw. Je wijst op het kaartje aan waar de leerling staat en je laat zien waar het lokaal is.

##### 1.3.1.2.1	Functioneel programmeren

Bij functioneel programmeren draait het om de definitie van functies waar mogelijk een resultaatwaarde aan wordt toegekend. Welke waarde als resultaat wordt teruggegeven hangt veelal af van één of meerdere condities.

Een groot verschil met imperatieve programmeertalen is het werken met variabelen. Bij een imperatieve programmeertaal is een variabele 'een doosje waar je iets in kunt stoppen'. In een functionele programmeertaal is een variabele eerder een label dat je geeft aan een bepaalde waarde.

Kenmerkend voor functionele programmeertalen is het ontbreken van een herhaal constructie. In plaats daarvan wordt voor het meerdere keren uitvoeren van bepaalde opdrachten een ander mechanisme gebruikt: recursie. Het idee van recursie is dat een functie zichzelf kan aanroepen. Verderop in deze module (direct na dit inleidende hoofdstuk over paradigma's) wordt de techniek van recursie nader besproken.

Voorbeelden van meer of minder zuivere programmeertalen voor functioneel programmeren zijn: APL (1957), Lisp (1958), Scheme (1970), ML (1973), Erlang (1987), Haskell (1990), F♯ (2002) en Scala (2004).

Later in deze module wordt nog uitgebreid aandacht besteed aan het functioneel programmeren. Hierbij wordt gebruik gemaakt van de programmeertaal ELM.

##### 1.3.1.2.2	Logisch programmeren
Een ander declaratief paradigma is het logisch programmeren. In functionele programmeertalen draait het om definities van functies. Binnen de logische programmeertalen gaat het om het definiëren van relaties, om feiten en regels die gelden binnen een bepaald probleemgebied. Het volgende voorbeeld geeft wellicht een indruk van wat hiermee wordt bedoeld:

Stel er is van een verzameling mensen gegeven wie de ouders zijn van iemand. Dit zijn de geregistreerde feiten:
```
    parent(wiebe,sjoerd)             parent(andre, charlotte).                 parent(martijn, stefan). 
    parent(adriaan, sjoerd).         parent(anette, charlotte).                parent(barend, stefan).
    parent(marjel, sjoerd).          parent(nynke, charlotte).                 parent(martijn, loes).
    parent(wiebe,irene).             parent(andre, johan).                     parent(barend, loes).
    parent(adriaan, irene).          parent(anette, johan).                    parent(loes, monique).
    parent(marjel, irene).           parent(nynke, johan).                     parent(loes, dennis).
                                     parent(charlotte, hendrik).
    parent(sjoerd, hendrik).
    parent(irene, monique).
    parent(irene, dennis).	
```
Verder zijn als feiten gegeven of iemand man of vrouw is:
```
    man(hendrik).                    man(andre).                              man(stefan).
    man(wiebe).                      man(johan).                              man(barend).
    man(adriaan).                    woman(charlotte).                        man(martijn).
    man(sjoerd).                     woman(anette).                           woman(loes).
    woman(marjel).                   woman(nynke).                            woman(monique).
    woman(irene).                                                             man(dennis).
```
Het is in een logische programmeertaal mogelijk om ook relaties te definiëren. In dit geval bijvoorbeeld een vader en een moeder relatie:
```
	father(X, Y) :- parent(X, Y), man (Y)
    mother(X, Y) :- parent(X, Y), woman (Y)
```
Vragen die nu gesteld kunnen worden zijn: 
```
	parent(adriaan,X).  %   Hiermee worden de ouders van Adriaan getoond.
	parent(X,sjoerd).   %   Hiermee worden de kinderen van Sjoerd getoond.
	father(adriaan, X). %   Hiermee wordt getoond wie de vader is van Adriaan.
```
Het is ook mogelijk om te definiëren wat een voorouder is van iemand:
```
	ancestor(X,Y):- parent(X,Y) | (parent(X,Z), ancestor(Z,Y)).
```
Het is hiermee mogelijk om bijvoorbeeld de volgende vragen te stellen:
```
	ancestor(wiebe, hendrik).        % Hiermee wordt gecontroleerd of Hendrik een voorouder is van Wiebe.
	ancestor(X, hendrik).            % Hiermee worden alle nakomelingen van hendrik getoond.
	ancestor(wiebe, X).              % Hiermee worden alle voorouders van Wiebe getoond.
```    
Tenslotte definiëren we ook een relatie waarmee wordt aangegeven of twee mensen bloedverwanten zijn van elkaar. Je bent een bloedverwant als je een gemeenschappelijke voorouder hebt, of als de een voorouder is van de ander.
```
    kinsman(X,Y):- ancestor(X,Y) | ancestor(Y,X) | (ancestor(X,Z),ancestor(Y,Z)).
```
Vragen die we nu kunnen stellen zijn:
```
	kinsman(wiebe, nynke).           % Hiermee wordt gecontroleerd of Wiebe en Nynke bloedverwanten zijn van elkaar.
	kinsman(wiebe, X).               % Hiermee worden alle bloedverwanten van Wiebe getoond.
```
Een veel gebruikte logische programmeertaal is Prolog. Ook de vraagtaal SQL is in veel opzichten te beschouwen als een logische programmeertaal. De programmeertaal Curry heeft zowel kenmerken van een functionele als van een logische programmeertaal.

##### Werkopdracht
>Definieer zelf nieuwe relaties zoals sibling, sister, brother, niece, nephew, uncle, aunt, nephew en/of cousin.


```elm

```
