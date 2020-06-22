
## 3.5 Records

Een record is een verzameling van zogenaamde `key`/`value` pairs. De `key` is de naam van een eigenschap, de `value` is de waarde. Bekijk dit voorbeeld van een `record` met naam ‘person’: 


```elm
person = { voornaam = "Xavier" , achternaam = "Yolo" , lengteInCm = "186" \
 , geboorteJaar = 2003 , favorieteKleur = "Red" }
```

Vervolgens kun je van dit record elke eigenschap opvragen, zoals bijvoorbeeld de voornaam: 

person.voornaam


```elm

```

of de lengte: 

person.lengteInCm


```elm

```

Een record is een verzameling van zogenaamde key/value pairs. De key is de naam van een eigenschap, de value is de waarde. Bekijk dit voorbeeld van een record met naam ‘person’:

person = {
voornaam = “Xavier”, achternaam = “Yolo”, lengteInCm = “186”, geboorteJaar = 2003, favorieteKleur = “Red” }

Het opvragen van een eigenschap gaat via de naam van die eigenschap:



```elm
person.geboorteJaar
```

Als je de waarde van een eigenschap wilt aanpassen maak je een nieuw record. Hierbij kun je aangeven dat je de waarden van 'person' overneemt, en vervolgens de waarden die afwijken los opsommen: 

person2 = { person | geboorteJaar = 2005 , favorieteKleur = "Blue" }


```elm

```

en je kunt de waarden van een record toekennen aan losse variabelen (dit heet Destructuring). 

In bijvoorbeeld de cheatsheet of de elm-tutorial (zie ‘bronnenlijst.ipynb’) kun je nog meer voorbeelden en mogelijkheden van records vinden.
