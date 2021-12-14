#!/usr/bin/awk -f

FS=":"

#Prints first name of the Tooks followed by their total campaign contributions .
#total= summ the values of $1,2 and 3
#$1 get the name
/took/ {print $1 ,"Contribuction" (total=$3 + $4 +$5)};


# Prints "Bullroarer"'s contributions.

/Bullroarer/ {print "Bullroarer's Constributions","", $3,$4,$5}

# Prints all those who contributed over $175 for their last contribution
{if ($5>175) print $1}
