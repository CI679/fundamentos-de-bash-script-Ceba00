#!/bin/bash

# Tipos de variables: Universal ->Número, Bool o una cadena
n1=10
n2=7
#echo es como un print
echo "El valor de n1 es $n1"

#Estructuras de control condicionales
# Operadores condicionales <(-lt) >(-gt) =>(-ge) <=(-le) ==(-eq) !=(-ne)
if [[ $n1 -gt $n2 ]]; then
    echo "La sentencia es verdadera $n1 $n2"
else
    echo "La sentencia es falsa $n1 $n2"
fi

# Todo programa regresa un valor, si es exitoso es 0
res=$?
echo "El resultado de la ejecusion es $res"
if [[ $? -eq 0 ]]; then
    echo "La sentencia se ejecuto con exito"
else
    echo "La sentencia fallo"
fi

# Operadores para manipular archivos
# -e Si un archivo o carpeta existe
# -d Si es una carpeta
# -r -w -x (Si puede leer, escribir o ejecutar)
# -s Si el archivo esta vacío.
file="./file-demo"

if [[ -s $file ]]; then
    echo "El archivo contiene algo"
else
    echo "El archivo esta vacio"
fi
#Operadores logicos AND(&&) OR(||)

if [ -r $file ] && [ -x $file ]; then
    echo "El archivo se puede leer y ejecutar"
else
    echo "El archivo no se puede leer ni ejecutar"
fi

#Estructura de control case

#case <<variable>> in
#    <<caso>> )
#        <<logica>>
#    ;;
#esac
#$=array donde $# ($1, $2, $3 .. $n)

case $1 in
    hola )
        echo "Bienvenido"
    ;;
    adios )
        echo "Adios"
    ;;
    *)
        echo "No entiendo"
    ;;
esac

# Estructuras iterativas: for y while
user=""
while [[ $user != "admin" ]]; do
    read -p "¿Cual es tu usuario? " user
done


for i in {1..5}; do
    echo "el número es $i"
done

for ((i=0; i<5; i++)); do 
    echo "* el numero es $i"
done 

invitados=(pedro juan jose david maria lulu)
for invitados in ${invitados[@]}; do
    echo "Hola $invitados"
done

#Funciones
suma(){
    echo "Hola desde la funcion suma"
}
suma

resta(){
    echo $(( $1 - $2 ))
}

total=$(resta 9 4)
echo "El total es $total"