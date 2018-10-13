#!/bin/bash
git log --raw | grep 'Author:' | awk -F '<' '{print $2}' | awk -F '>' '{print $1}' | sort | uniq -c | awk -F ' ' '{print $2"\t"$1}'