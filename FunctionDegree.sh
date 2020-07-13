#!/bin/bash -x
function degF()
{
degf=$( echo "scale =2; $degc*9/5+32" | bc );
echo "degree to fahrenheit=$degf";
}

function degC()
{
degc=$( echo "scale =2; $degf-32*5/9" | bc );
echo "degree to celsius=$degc";
}
echo -e "1.degree to Fahrenheit\n2.degree to Celsius\n3.exit";
read choice
case $choice in
"1")echo "enter the degree:";
    read degc;
    degF "$degc";;
"2")echo "enter the degree:";
    read degf;
    degC "$degf";;
"3")exit;;
esac
