#!/bin/bash

java -jar /Applications/tagsoup-1.2.1.jar pomeditor.html 2>/dev/null | xml sel -N h=http://www.w3.org/1999/xhtml -t -v '//h:script/@src' - | tail -n+1 | wget -i -
