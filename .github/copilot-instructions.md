Build notes for this workspace:

- The report compiles from WSL in `Relatorio AGES/`, not from the Windows MiKTeX `latexmk` setup.
- Working compile sequence: `pdflatex main.tex`, `biber main`, `pdflatex main.tex`, `pdflatex main.tex`.
- Required TeX Live packages on WSL: `texlive-publishers`, `texlive-lang-portuguese`, `texlive-bibtex-extra`, and `biber`.
- The project uses `abntex2` and `biblatex` with `style=abnt`.
- One failure source was `conteudo/2 - ages I/conteudo/figures/decola-time.jpg`; it had broken EXIF metadata and was fixed by stripping metadata with `exiftool -all= -overwrite_original`.
- Current remaining warnings are non-fatal: empty bibliography, duplicate labels, and some overfull hboxes.

## Build Scripts

Two shell scripts are available in the project root for compilation workflow:

- **`clean.sh`**: Removes all generated LaTeX compilation files (`.aux`, `.bbl`, `.bcf`, `.blg`, `.fdb_latexmk`, `.fls`, `.lof`, `.lot`, `.log`, `.run.xml`, `.toc`, `.pdf`) from root and subdirectories.
- **`compile.sh`**: Runs the complete compile sequence (3x `pdflatex`, 1x `biber`). Automatically removes Zone.Identifier files before compiling. Use after `clean.sh` for a fresh build.

Usage:
```bash
./clean.sh                    # Clean build artifacts
./compile.sh                  # Compile project (auto-removes Zone.Identifiers)
./clean.sh && ./compile.sh    # Full clean rebuild
```

## Project Cleanup

- Zone.Identifier files are automatically removed by `compile.sh` before each build.
- All temporary Windows metadata is ignored by `.gitignore`.
- `.gitignore` configured to exclude all LaTeX build artifacts from version control.
