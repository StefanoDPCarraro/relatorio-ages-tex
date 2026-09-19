#!/bin/bash

# Compila o relatório e cria uma cópia otimizada para compartilhamento.
# O arquivo main.pdf permanece inalterado.

set -euo pipefail

./compile.sh

echo "Comprimindo PDF..."
gs \
  -sDEVICE=pdfwrite \
  -dCompatibilityLevel=1.4 \
  -dPDFSETTINGS=/ebook \
  -dNOPAUSE \
  -dQUIET \
  -dBATCH \
  -sOutputFile=main-comprimido.pdf \
  main.pdf

echo "Arquivo comprimido gerado: main-comprimido.pdf"
