#!/bin/bash
count=1
while [[ $count -le 40 ]]
do
   echo "Se ejecuto prueba"
   ./serial >> resultadosSerial.csv
   (( count++ ))
done

count=1
while [[ $count -le 40 ]]
do
   echo "Se ejecuto prueba"
   ./vector >> resultadosVector.csv
   (( count++ ))
done

count=1
while [[ $count -le 40 ]]
do
   echo "Se ejecuto prueba"
   ./paral >> resultadosParal.csv
   (( count++ ))
done


count=1
while [[ $count -le 40 ]]
do
   echo "Se ejecuto prueba"
   ./tbb >> resultadosTBB.csv
   (( count++ ))
done
