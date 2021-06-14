
# Opgave Vraag1

![havo2018.1.1.png](havo2018.1.1.png)


# Antwoord Vraag1

![havo2018.1.2.png](img/havo2018.1.2.png)


# Algemene Uitwerking Vraag1
Bestudeer de Algemene Uitwerking van Vraag1


```elm
import Html exposing(..)
main = text ("Afstand = " ++ (toString afstand) ++ " m")

c = 3.0*(10^8)
milli g = g * 10^(-3)

s_signaal t = c * t
s_object t = 0.5 * (s_signaal t)

afstand = s_object (milli 0.26)
-- compile-code
```





# Opgave Vraag2

![havo2018.2.1.png](img/havo2018.2.1.png)


# Antwoord Vraag2

![havo2018.2.2.png](img/havo2018.2.2.png)


# Algemene Uitwerking Vraag2
Bestudeer de Algemene Uitwerking van Vraag1 en voeg de ontbrekende code toe aan de Algemene Uitwerking van Vraag2.


```elm
import Html exposing(..)
main = text ("Aantal golven = " ++ (toString aantalGolven))

c = 3.0 * 10^8

aantalGolven = ag (giga 9.38) (micro 0.1)
-- compile-code
```




# Opgave Vraag 3

![havo2018.3.1.png](img/havo2018.3.1.png)

# Antwoord Vraag3

![havo2018.3.2.png](img/havo2018.3.2.png)

# Algemene Uitwerking Vraag3
Voeg de code toe voor de Algemene Uitwerking van Vraag3.


```elm
import Html exposing(..)


-- compile-code
```


# Opgave Vraag4

![havo2018.4.1.1.png](img/havo2018.4.1.1.png)

![havo2018.4.1.2.png](img/havo2018.4.1.2.png)

# Antwoord Vraag4

![havo2018.4.2.png](img/havo2018.4.2.png)

# Algemene Uitwerking Vraag4
Bestudeer de Algemene Uitwerking van Vraag4.


```elm
import Html exposing(..)

main = text ("Oppervlakte = " ++ (toString oppervlakte))

kilo g = g * 10^3

opp a r1 r2 = a * (r2^4 / r1^4)

oppervlakte = opp 6.0 (kilo 30) (kilo 45)
-- compile-code
```
