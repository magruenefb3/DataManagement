# Fehlerbehandlung

## Wertkorrektur
Vorgehen bei falschen Werten:
1) Neuen Wert aus Spalte X berechnen und in eine neue Spalte X1 legen
2) Mit `Select values` die neu berechneten Werte aus X1 in die alte Spalte X überschreiben.
3) Anschließend die korrigierten Werte mit einem `Sorted merge` wieder in den Stream bringen. 


![image](https://github.com/magruenefb3/DataIntegration/assets/97667586/5bb979a0-dac7-49b9-9cd6-b8076561db33)

![image](https://github.com/magruenefb3/DataIntegration/assets/97667586/c3b20285-b266-4487-8f71-3bd0bcefb01d)

## Ins Log schreiben
Hierzu kann der `Write to log`-Step verwendet werden.  
![image](https://github.com/magruenefb3/DataIntegration/assets/97667586/1d6222cd-07d3-4bc8-8003-aa28253ffd5c)

## Error in ein File schreiben
`Microsoft Excel output`
