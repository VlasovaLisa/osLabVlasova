#!/bin/bash

rm public_html/*
mkdir -p public_html
echo "">public_html/index.html
echo "<html><body>">>public_html/index.html
for i in $(seq 1 100); do
    file="$i.html"
    echo "<a href=\"$file\">select file: $i</a><br/>">>"public_html/index.html"
    touch "public_html/$file"
done
echo "</body></html>">>public_html/index.html
ranNum=$((RANDOM % 100 + 1))

for i in $(seq 1 100); do
    if [[ "$i" -lt "$ranNum" ]]; then
        echo "your number is too small">"public_html/$i.html"
    elif [[ "$i" -eq "$ranNum" ]]; then
        echo "you win!">"public_html/$i.html"
    else
        echo "your number is too big">"public_html/$i.html"
    fi
done
