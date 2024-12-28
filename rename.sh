#! /bin/sh
# rename objects or messages

search="$1"
replace="$2"

#find . -name "*.pd" -type f -exec sed -i "s/gate\([; ]\)/cyclone\/gate\1/g" {} \;


#find . -name "*.pd" -type f -exec sed -i "s/$search/$replace/g" {} \;
cd ../../
find . -name "*.pd" -type f -exec sed -i "s/$search\([; ]\)/$replace\1/g" {} \;
