#!/bin/bash

# Script para compilar o projeto LaTeX com abntex2 e biblatex

echo "Iniciando compilação..."

# 1ª rodada de pdflatex
echo "1ª rodada: pdflatex..."
pdflatex main.tex || exit 1

# Biber para referências
echo "Processando bibliografia com biber..."
biber main || exit 1

# 2ª rodada de pdflatex
echo "2ª rodada: pdflatex..."
pdflatex main.tex || exit 1

# 3ª rodada de pdflatex (última rodada necessária)
echo "3ª rodada: pdflatex..."
pdflatex main.tex || exit 1

echo ""
echo "Compilação concluída com sucesso!"
echo "Arquivo gerado: main.pdf"
