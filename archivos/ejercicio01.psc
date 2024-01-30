Algoritmo ejercicio01
	// 01 En el mercado de abarrotes de Ayacucho hay un total de 1000 personas, sus edades varian de 0 a 80,
	// hallar cuantos de ellos  son menores de edad, cuantos son mayores de edad y cuantos son adultos mayores.
	
	Definir personasMercado Como Entero
	Definir edadMenores Como Entero
	Definir edadAdulMay Como Entero
	Definir edadMayores Como Entero
	Definir generoMujer Como Entero
	Definir generoVaron Como Entero
	Definir edad Como Entero
	Definir edadmv Como Entero
	edadMenores<-0
	edadAdulMay<-0
	edadMayores<-0
	generoMujer<-0
	generoVaron<-0
	
	
	personasMercado<-100
	incrementoPersonas<-personasMercado+(personasMercado*450)/100
	
	Dimension edad[personasMercado]
	Dimension edadmv[personasMercado]
	Dimension edadIncremento[incrementoPersonas]
	
	Para i<-1 Hasta personasMercado Con Paso 1 Hacer
		edad[i]=azar(81)
		
		edadmv[i]=azar(2)
		
		
		Si edad[i]>= 18 Entonces
			Si edad[i]>=18 y edad[i]<=65 Entonces
				edadMayores=edadMayores+1
				
			SiNo
				edadAdulMay=edadAdulMay+1
			Fin Si
						
		SiNo
			edadMenores=edadMenores+1
		Fin Si
		
		Si edadmv[i] = 0 Entonces
			generoMujer=generoMujer+1
		SiNo
			generoVaron=generoVaron+1
		Fin Si
		
			
		
	Fin Para
	
	//02 Del problema anterior considerar el 0 como mujer y 1 como varon en una asiganacion aleatoria, 
	// calcular el porcentaje de varones y porcentajes de nujeres.
	
	// 03 La personas del mercado de ayacucho incrementa en un en un 450% segun ello calcular el maximo
	// y minimo de edades presentes.
	
	Dimension edadMin[1] 
	Dimension edadMax[1]
	edadMin[1]<-81
	edadMax[1]<-0
	
	
	
	
	Para i<-1 Hasta incrementoPersonas Con Paso 1 Hacer
		
		edadIncremento[i]=azar(81)
		
		Si edadMin[1]>edadIncremento[i] Entonces
			edadMin[1]<-edadIncremento[i]
		
		Fin Si
		
	Fin Para
	
	
	
	Para i<-1 Hasta incrementoPersonas Con Paso 1 Hacer
		Si edadMax[1]<edadIncremento[i] Entonces
			edadMax[1]<-edadIncremento[i]
			
		Fin Si
		
	Fin Para
	
	
	
	
	// impresion
	Imprimir "pregunta 01"
	Imprimir "La cantidad de personas menores de edad son: " , edadMenores
	Imprimir "La cantidad de personas mayores de edad son: " , edadMayores
	Imprimir "La cantidad de personas adultos mayores son: " , edadAdulMay
	Imprimir "pregunta 02"
	Imprimir "La cantidad de mujeres son :", generoMujer
	Imprimir " La cantidad de varones son: ", generoVaron
	Imprimir "pregunta 03"
	Imprimir "la edad minima es : " , edadMin[1]
	imprimir "La edad maxima es : " , edadMax[1]
	
	
	
	
	
FinAlgoritmo
