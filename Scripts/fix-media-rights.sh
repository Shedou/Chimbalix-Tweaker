#!/usr/bin/env bash
# Script version 1.0
# LICENSE for this script is at the end of this file

path="/media/$USER"

echo -e "\
-= Fix \"/media/USER\" folder rights =-

Sets permissions to 755 (rwx rx rx - root group others) for the directory: $path

This solves problems with the operation of local repositories located outside the Linux root directory (on an external HDD for example).

Enter \"y\" or \"yes\" to continue (root rights required):
"

read confirm
if [ "$confirm" = "y" ] || [ "$confirm" = "yes" ]; then
	sudo chmod 755 "$path"
else echo "Abort."; fi

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
