# Escriba su código aquí
sed 's/,\([0-9]\)/.\1/' out.10 > out.11 #Rempazo , seguido de un número por . y el mismo numero

sed 's/\//-/g' out.11 > out.12 #Remplazo / por -  Cascarita: para identificar el / hay que poner \/

sed 's/-\([0-9][0-9]\);/20\1/' out.12 > out.13 #cambio el formato de YY a YYYY

sed 's/\([0-9][0-9]\)-\([0-9][0-9]\)-\([0-9][0-9][0-9][0-9]\)/\3-\2-\1/' out.13 > out.14 ## Cambio el orden de los caracteres 123 a 321

sed 's/;;/;\\N;/g' out.14 > out.15 ##Completo los null \N

sed 's/;N;/;\N;/g' out.15 > out.16 ##Completo los N por \N

sed 's/;N/;\\N/g' out.16 > out.17 ##Completo los ;N por ;\N

sed 's/\([0-9][0-9][0-9]\);\([0-9]\)/\1.2/' out.17 > out.18 #Rempazo ; seguido de un número por . y el mismo numero

sed 's/;/;\\N/3g' out.18 > out.19 #Remplaza el patron 3 de ; por ;\N 


sed 's/\\N\\N/\\N/' out.19 > out.20 

sed 's/\\N\([0-9][0-9][0-9]\)/\1/' out.20 > out.21 #Remplaza \N ### por ###

sed 'y/abc/ABC/' out.21 > out.22 #Remplaza a por A