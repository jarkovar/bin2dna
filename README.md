# bin2dna
 A file's binary code is translated to 'DNA' symbols (A,T,C,G) and written to output file (.fasta)

Usage:
./bin2dna.sh <filename>

Coding used to translate binary to 'DNA':

        00=A <br />
            11=T <br />
                01=C <br />
                    10=G <br />

Example output:
AGATAGACAGTTCGAGCGGCCGTGAGTTCGAGCGACCTATCGGAAAGGAAGGAAGG(
