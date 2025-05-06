#!/bin/bash

# Проверка количества аргументов
if [ $# -ne 2 ]; then
    echo "Usage: $0 <filename> <word>"
    exit 1
fi

# Присваивание аргументов переменным
filename=$1
word=$2

# Проверка существования файла
if [ ! -f "$filename" ]; then
    echo "File not found: $filename"
    exit 1
fi

# Поиск строк с искомым словом
grep -w "$word" "$filename"
