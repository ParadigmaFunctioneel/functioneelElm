# Functioneel programmeren, enkele aspecten

Het voordeel van het functionele paradigma is dat het goed aansluit bij een vak als wiskunde.

In de wiskunde hebben leerlingen al met `variabelen` en `functies` en `parameters` leren werken.

Een `variabele` representeert een `waarde` van een bepaald `type` (bij wiskunde doorgaans getallen) en die waarde blijft hetzelfde. Ook in functionele talen verandert de waarde van een variabele niet (in tegenstelling tot variabelen bij veel `imperatieve talen`, waar de waarde van een variabele om de haverklap kan veranderen).

Het `functiebegrip` is een van de kernpunten van het wiskundeonderwijs in het VO. Een `functie` berekent aan de hand van de `input` (de `parameters`) wat de `output` is. Een `pure function` bij functioneel programmeren is een functie zonder `side effects`. Als de functie meerdere malen wordt aangeroepen komt er (bij gelijke input) ook altijd hetzelfde antwoord uit. In een imperatieve, en ook in een object oriented omgeving is het antwoord (bij aanroep van een `methode`) vaak nog afhankelijk van andere factoren (zoals bijvoorbeeld de status van het object).

Een hieruit volgend voordeel is dat `pure functions` zonder problemen parallel uitgevoerd kunnen worden, terwijl parallelle executie in imperatieve en object oriented omgevingen vaak veel extra complexiteit oplevert, vaak gepaard gaand met bugs. 
