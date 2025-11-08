#!/bin/bash

if [ $# -lt 2 ]
then
	>&2 echo "Model Id and Year required: e.g. 172 1967"
	exit 1
fi

>&2 echo "############ $2 ############"

count=0

while read l1
do
	read l2
	read l3
	read l4
	read l5
	read l6
	read l7
	img=$(echo $l2 | sed 's/mbx-u\.com\/images\/models\///')
	if grep -q $img index.html;
	then
		>&2 echo "$l5 already listed"
	else
		linkpre='<a href="'
		linkpost='">'
		pre='<img src="'
		dir="images/"
		img=$(echo $l2 | sed 's/mbx-u\.com\/images\/models\///')
		post='" width="240px"></a>'
		echo $linkpre$l1$linkpost$pre$dir$img$post
		((count++))
		echo "<br>$count. $l5 ($2)<p>"
	fi
done < simple$1.txt

