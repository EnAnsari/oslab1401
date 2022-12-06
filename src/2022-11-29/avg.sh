#!/bash/bin
avg=0
for ((i=1; i<=3; i++))
do
	sum=0
	echo "Enter scores students $i"
	for ((j=1; j<=3; j++))
	do
		echo -n "Enter score $j: "
		read sc
		sum=$((sum + sc))
	done
	a=$(( $sum / 3))
	echo "student $i avg: $a"
	if [ $avg -lt $a ]
	then
		avg=$a
	fi
done

echo "max avg = $avg"
