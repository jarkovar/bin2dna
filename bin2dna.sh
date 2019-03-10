#!/bin/bash

## Any input file's binary code is translated to 'DNA' symbols (A,T,C,G) and written to output file (.fasta)
## 2019-03 jk

FILE=$1
RESULT_FORMAT=fasta
xxd -b ${FILE}|cut -f2-7 -d' '|tr -d '\n'' ' > $$.bin

echo "Coding used to translate binary to 'DNA'
--------------------------------------------
	00=A
	    11=T
		01=C
		    10=G
--------------------------------------------"
sed 's/\([01][01]\)/\1 \n/g; s/00 /A /g; s/11 /T /g; s/01 /C /g; s/10 /G /g' $$.bin | tr -d '\n'' ' > ${FILE}.${RESULT_FORMAT}
cat ${FILE}.${RESULT_FORMAT}
echo -e "\n\nResulting 'DNA' stored in: ${FILE}.${RESULT_FORMAT} \n"
rm $$.bin
