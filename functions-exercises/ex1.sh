#!/bin/bash
function file_count() {
    NUMBER_OF_FILES=$(ls | wc -l)
    echo "Number of files under this directory: $NUMBER_OF_FILES"
}

file_count