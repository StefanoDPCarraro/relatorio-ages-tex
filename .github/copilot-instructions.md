Build notes for this workspace:

- The report compiles from WSL in `Relatorio AGES/`, not from the Windows MiKTeX `latexmk` setup.
- Working compile sequence: `pdflatex main.tex`, `biber main`, `pdflatex main.tex`, `pdflatex main.tex`.
- Required TeX Live packages on WSL: `texlive-publishers`, `texlive-lang-portuguese`, `texlive-bibtex-extra`, and `biber`.
- The project uses `abntex2` and `biblatex` with `style=abnt`.
- One failure source was `conteudo/2 - ages I/conteudo/figures/decola-time.jpg`; it had broken EXIF metadata and was fixed by stripping metadata with `exiftool -all= -overwrite_original`.
- Current remaining warnings are non-fatal: empty bibliography, duplicate labels, and some overfull hboxes.
