#!/bin/bash


for f in src/*;
do
	name=${f##*/};
        base=${name%.zip};

	mkdir "dst/$base";

	unzip "$f" -d "dst/$base";

	rm "$f"
done

