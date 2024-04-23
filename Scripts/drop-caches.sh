#!/usr/bin/env bash
# Script version 1.0
# LICENSE for this script is at the end of this file

mode=3
if [ "$1" == "1" ]; then mode=1; fi
if [ "$1" == "2" ]; then mode=2; fi
if [ "$1" == "3" ]; then mode=3; fi

echo "-= Drop caches (RAM) =-"
echo "Command: sync && echo $mode | tee /proc/sys/vm/drop_caches"
echo "Memory before cleaning:"
cat /proc/meminfo | grep -P 'Buffers|Cached|Slab'

echo "Please wait."
sync && echo $mode | tee /proc/sys/vm/drop_caches
echo "Memory after cleaning:"
cat /proc/meminfo | grep -P 'Buffers|Cached|Slab'
read pause

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
