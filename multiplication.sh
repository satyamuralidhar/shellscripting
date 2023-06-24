echo -e "enter the values:\n\c"
read -r c
i=1
while [[ $i -le 10 ]]
do
    a=`expr $i \* $c`
    echo "$i * $c = $a"
    i=`expr $i + 1`
done

