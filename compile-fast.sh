#!/bin/bash

# Script para compilação rápida (incremental) - apenas para mudanças de conteúdo
# Use este quando modificou APENAS texto, sem alterar referências ou estrutura
# Para mudanças em referências/bibliography/estrutura, use ./compile.sh

# Remover Zone.Identifiers antes de compilar
echo "Limpando Zone.Identifier files..."
find . -name '*Zone.Identifier' -type f -delete

echo "Compilação rápida (incremental)..."

# Apenas 2 rodadas de pdflatex - mais rápido para mudanças de conteúdo
echo "1ª rodada: pdflatex..."
pdflatex main.tex || exit 1

echo "2ª rodada: pdflatex..."
pdflatex main.tex || exit 1

echo ""
echo "Compilação rápida concluída!"
echo "Arquivo gerado: main.pdf"
echo ""
echo "⚠️  Para mudanças em referências, bibliography ou estrutura, execute: ./compile.sh"
