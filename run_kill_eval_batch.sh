#!/bin/bash

for file in pace_problem_set/heur/*; do
    echo $file
    ./run_kill.sh "$file" 60 > solution.txt
    verifier/verifier "$file" solution.txt
    #print how many lines are in the file
    wc -l solution.txt
done
