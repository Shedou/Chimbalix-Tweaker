#!/usr/bin/env bash
# Script version 1.0
# LICENSE for this script is at the end of this file

# -= Examples =-
# Path_To_Script="$( dirname "$(readlink -f "$0")")"
# Current User Name: $USER
# Pause: read pause

# FileNameWithoutExtension="${FileName%.*}"
# FileNameWithoutPath="$(basename $FileName)"
# FilePathWithoutFileName="$(dirname $FileNameWithPath)"
# Remove 2 first and 1 last char from String: "${String:2:-1}"
#
# sed -i -e "s~TEXT_TO_REPLACE~TEXT~g" "File.txt"

# Add all arguments to variable: Files="$@"
# Remove the first argument from the queue: shift

# Array arguments iterate:
# Files=("$@")
# for i in "${!Files[@]}"; do
#	CurrentFile="${Files[$i]}"
# 	Current_Array_Number="$i"
# done

# Font styles
# Usage: "${B}Bold Text${N}"
# B=$(tput bold)
# N=$(tput sgr0)

sync && echo 3 | sudo tee /proc/sys/vm/drop_caches

# MIT License
#
# Copyright (c) 2024 Chimbal
#
# Permission is hereby granted, free of charge, to any person obtaining a copy
# of this software and associated documentation files (the "Software"), to deal
# in the Software without restriction, including without limitation the rights
# to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
# copies of the Software, and to permit persons to whom the Software is
# furnished to do so, subject to the following conditions:
#
# The above copyright notice and this permission notice shall be included in all
# copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
# IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
# FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
# AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
# LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
# OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
# SOFTWARE.
