# add 2 number
read a
read b
sum=$(( $a + $b))
sum2=$(( $sum + $sum))

((sum3= $a + $b))
((sum4= $sum3 + $sum3))

echo $sum2
echo $sum4
