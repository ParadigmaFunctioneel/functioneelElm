
# 1 Inleiding
## 1.1	Generaties programmeertalen
De eerste elektronische computers zijn gebouwd rond de jaren 40 van de vorige eeuw. Het was al vrij snel mogelijk om een computer verschillende taken (berekeningen) uit te laten voeren. Het was hiervoor nodig om een computer te laten weten welke opdrachten gedaan moesten worden. Het invoeren van de opdrachten die door een computer moeten worden uitgevoerd is het programmeren van een computer. De instructies die kunnen worden gebruikt om deze opdrachten in te voeren, vormen samen de programmeertaal waarmee de computer kan worden geprogrammeerd. In de loop der jaren zijn er talloze programmeertalen ontwikkeld.

Er zijn veel manieren om een onderscheid te maken in soorten programmeertalen. Een voor de hand liggende indeling is een indeling op grond van 'de afstand tot de machine'. Met de afstand tot de machine wordt bedoeld: wat moet er nog gebeuren voordat een computer datgene wat er in een programmeertaal is ontwikkeld daadwerkelijk kan uitvoeren? In de regel worden de groepen in deze indeling aangeduid met het begrip 'generaties' (veelal afgekort als GL). Er worden grofweg vijf generaties programmeertalen onderscheiden:

### 1.1.1	1GL
Met de eerste generatie programmeertalen wordt doorgaans machinetaal bedoeld. De instructies die in een eerste generatie programmeertaal aan een computer worden aangeboden bestaan uit reeksen van 0'en en 1'en. De computer kan deze instructies direct uitvoeren zonder dat het eerst moet worden vertaald.

### 1.1.2 2GL
De eerste stap die werd gezet om het programmeren iets eenvoudiger te maken was de introductie van de zogenaamde assembleertalen (assembly languages). Deze tweede generatie programmeertalen laat programmeurs gebruik maken van symbolen, steekwoordjes ('mnemonics') en geheugenadressen in plaats van 0'en en 1'en. Voorbeelden van opdrachten zijn:
```
    MOV CX,10    Plaats de waarde 10 in het CX register
    ADD  BX, AX  Verhoog de waarde in het BX register met de waarde in het AX register
    JMP LBL_A    Ga met de uitvoering van het programma verder bij het label LBL_A
    SHL BX,2	 Verschuif de waarde in het BX register 2 posities naar links 
                 (= vermenigvuldig de waarde in het BX register met 4).
```
De afstand van de tweede generatie programmeertalen tot de hardware is iets groter dan wanneer de instructies direct in binaire code aan de computer wordt aangeboden. De assembleercode zal eerst moeten worden omgezet in door de computer uitvoerbare binaire code.

Om te kunnen werken met een assembly language is nog altijd kennis nodig van de hardware waar de code voor wordt geschreven; elke processorsoort heeft een eigen instructieset en registerset. Dit betekent dat de assembly code voor de ene computer wellicht niet zal werken op een andere computer.

### 1.1.3 3GL
Met de komst van de derde generatie programmeertalen werd het programmeren weer iets gebruikersvriendelijker. Voor de instructies in een derde generatie programmeertaal kan gebruik worden gemaakt van woordjes uit de natuurlijke taal (if, while, case, …). Hierdoor is de code een stuk beter leesbaar dan assemblercode. Bovendien is het niet langer nodig om te verwijzen naar registers wanneer er met gegevens moet worden gewerkt; gegevens in een derde generatie programmeertaal kunnen worden benaderd via zelf gekozen namen die in de programmacode zijn gekoppeld aan de betreffende 'variabelen'. Ook dit levert een flinke verbetering op in de leesbaarheid van de code. Daarnaast is het binnen derde generatie programmeertalen mogelijk om met verschillende soorten gegevens te werken (gehele getallen, kommagetallen, letters, woorden, logische gegevens).  Ook hierdoor is de bruikbaarheid van de derde generatie programmeertalen flink toegenomen ten opzichte van de programmeertalen uit de tweede generatie.

Voorbeelden van programmeertalen uit de derde generatie zijn: Fortran, Basic, Cobol, Pascal, C / C++ / C#, Java, Ruby, Python, Go.

### 1.1.4 4GL
De programmeertalen uit de vierde generatie liggen op een nog hoger abstractieniveau dan de derde generatie programmeertalen. Met de vierde generatie programmeertalen wordt gestreefd naar:

1.	een versnelling in het ontwikkelen van software,
2.	het minimaliseren van de gebruikersinspanning om informatie op te kunnen vragen uit computersystemen,
3.	het verlagen van de benodigde programmeerkennis om applicaties te kunnen ontwikkelen,
4.	ontwikkeling van onderhoudsvriendelijk en eenvoudig aanpasbare software.

Om dit te bewerkstelligen wordt er bij de ontwikkeling in vierde generatietalen gebruik gemaakt van verschillende tools, zoals vraagtalen om databases te benaderen, rapportgeneratoren om informatie snel en overzichtelijk te kunnen presenteren en code generatoren waarmee op basis van een aantal keuzes van de ontwikkelaar achterliggende programmacode wordt aangemaakt.

Voorbeelden van platform afhankelijke vierde generatie programmeertalen zijn: OpenEdge ABL (Progress 4GL), ABAP (SAP), PL/SQL (Oracle) en Oracle Reports. Voorbeelden van vierde generatietalen die niet afhankelijk zijn van een platform zijn SPSS en R (gebruikt bij dataverwerking en statistische toepassingen).

### 1.5	5GL
De ontwikkeling van de vijfde generatie programmeertalen richt zich op het ontwikkelen van software door het beschrijven van oplossingen in min of meer natuurlijke talen. Met behulp van kunstmatig intelligente technieken wordt deze beschrijving geanalyseerd en omgezet naar de gewenste software.

Voorbeelden van op natuurlijke taal gebaseerde programmeertalen zijn: Clout, Q&A, Savvy Retriever (voor het werken met databases) en HAL (Human Access Language).

Het ligt voor de hand om te veronderstellen dat de generaties programmeertalen elkaar ook in de tijd opvolgen. Dit is slechts ten dele waar: de eerste twee generaties programmeertalen waren inderdaad de eerste generaties waarmee computers werden geprogrammeerd. De programmeertalen uit de overige generaties zijn op dit ogenblik nog alle drie volledig in ontwikkeling.


```elm

```
