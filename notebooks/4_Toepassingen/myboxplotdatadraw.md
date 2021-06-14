
Kopieer de code uit de vorige opdracht naar de cell hier onder.

Voeg bovenaan in **myboxplotdatadraw.elm** het volgende toe:

```elm
import Svg exposing (..)<br/>import Svg.Attributes exposing (..)
```

Vervang in <strong>myboxplotdatadraw.elm</strong>:

```elm
view model =
	div []
	[ input [onKeyDown KeyDown, onInput Input] []
	, div [] [ text (toString model.outputData) ]
	]
```

door:

```elm
view model =
	let
		a = Array.fromList model.outputData
		kl = withDefault 0 (Array.get 0 a)
		k1 = withDefault 0 (Array.get 1 a)
		k2 = withDefault 0 (Array.get 2 a)
		k3 = withDefault 0 (Array.get 3 a)
		gr = withDefault 0 (Array.get 4 a)
		s = 200/(gr-kl)
		h = 12
		line1 = pointsListToString [kl*s, 100, k1*s, 100]
		box1 = pointsListToString [k1*s, 100-(s*((gr-kl)/h)), k2*s, 100-(s*((gr-kl)/h)), k2*s, 100+(s*((gr-kl)/h)), k1*s, 100+(s*((gr-kl)/h)), k1*s, 100-(s*((gr-kl)/h))]
		box2 = pointsListToString [k2*s, 100-(s*((gr-kl)/h)), k3*s, 100-(s*((gr-kl)/h)), k3*s, 100+(s*((gr-kl)/h)), k2*s, 100+(s*((gr-kl)/h)), k2*s, 100-(s*((gr-kl)/h))]
		line2 = pointsListToString [k3*s, 100, gr*s , 100]
	in
		div []
	 	 [ input [onKeyDown KeyDown, onInput Input] []
	 	 , div [] [ Html.text ("kl: " ++ toString kl) ]
	 	 , div [] [ Html.text ("q1: " ++ toString k1) ]
	 	 , div [] [ Html.text ("q2: " ++ toString k2) ]
	 	 , div [] [ Html.text ("q3: " ++ toString k3) ]
	 	 , div [] [ Html.text ("gr: " ++ toString gr) ]
	 	 , svg [ viewBox "0 0 500 400", width "800px" ]
	 	 	 [
	 	 	 	 polyline [ fill "none", stroke "black", points line1 ] [],
	 	 	 	 polyline [ fill "none", stroke "black", points box1 ] [],
	 	 	 	 polyline [ fill "none", stroke "black", points box2 ] [],
	 	 	 	 polyline [ fill "none", stroke "black", points line2 ] []
	 	 	 ]
	]
```

### Uitleg

De gegevens voor de boxplot staan in model.outputData. Deze gegevens worden hier uit gehaald en in de volgende Floats gezet:

+ kl, kleinste
+ k1, eerste quartiel
+ k2, tweede quartiel
+ k3, derde quartiel
+ gr, grootste


Deze Floats worden gebruikt om binnen een svg tag de volgende polylines aan te maken:

+ line1
	+ box1
	+ box2
	+ line2


Zie [https://www.w3schools.com/graphics/svg_polyline.asp]("https://www.w3schools.com/graphics/svg_polyline.asp")  als je meer over svg en polyline wilt weten.

## Resultaat
Run het elm programma in de cell hier onder. Je ziet het volgende:


![](elmex1.1.png)

In het vakje links boven kun je de waardes voor een boxplot invullen. Vul daar de volgende waardes in uit het voorbeeld van Dr. Aart:

```
7,3,8,6,8,5,4,5,3,6,2,6,9,1,2,7,5,8,7,6
```
(Let op zet geen spaties na de komma’s).

Druk op Enter en je ziet deze boxplot:

![elmex1.2.png](elmex1.2.png)
