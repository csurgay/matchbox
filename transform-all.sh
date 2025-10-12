if [ $# -eq 0 ]
then
	echo "lookup file is missing!"
	exit 1
fi

while read L
do
	IFS=" "
	tokens=( $L )
	year=${tokens[0]}
	idno=${tokens[1]}
	echo "$idno:$year is being processed..."
	./transform.sh $idno $year >> index.html
done < $1

