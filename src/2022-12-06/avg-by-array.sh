#!/bash/bin
avg=0
aavg=(0 0 0)
for ((i=1; i<=3; i++))
do
	score=(0 0 0)
        echo "Enter scores students $i"
        for ((j=1; j<=3; j++))
        do
                echo -n "Enter score $j: "
                read score[j-1]
	done
        aavg[i-1]=$(( ( ${score[0]} + ${score[1]} + ${score[2]} ) / 3 ))
	if [ $avg -lt ${aavg[i-1]} ]
        then
                avg=${aavg[i-1]}
        fi
done

for ((i=1; i<=3; i++))
do
	echo "Student $i average is ${aavg[$i-1]}"
done
echo "Total average of students: ${aavg[*]}"
echo "max avg = $avg"
