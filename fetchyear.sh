if [ $# -eq 0 ]
then
  echo "Model list id number is not provided!"
  exit 1
fi

wget "http://mbx-u.com/browse.php?id=$1"

mv "browse.php?id=$1" wget$1.txt

cat wget$1.txt | grep -A 5 "ver-detail-var-listing.php?model=" > data$1.txt

cat data$1.txt | sed 's/.*<a href=\"/http:\/\/mbx-u.com/g' | sed 's/.*<img src=\"/mbx-u.com\//g' | sed 's/\">//g' | sed -E 's/\s*<.?h6>//g' > simple$1.txt

grep images simple$1.txt > images$1.txt

cd images

while read l ; do wget http://$l ; done < ../images$1.txt 

cd ..

