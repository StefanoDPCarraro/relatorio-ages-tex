#!/bin/bash

# Script para limpar arquivos gerados pela compilação LaTeX

echo "Limpando arquivos de compilação..."

rm -f main.aux
rm -f main.bbl
rm -f main.bcf
rm -f main.blg
rm -f main.fdb_latexmk
rm -f main.fls
rm -f main.lof
rm -f main.lot
rm -f main.log
rm -f main.run.xml
rm -f main.toc
rm -f main.pdf

# Limpar arquivos auxiliares em subdiretórios
find conteudo -type f \( -name "*.aux" \) -delete

echo "Limpeza concluída!"
