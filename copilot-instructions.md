Build notes for this workspace:

- The report compiles from WSL in `Relatorio AGES/`, not from the Windows MiKTeX `latexmk` setup.
- Working compile sequence: `pdflatex main.tex`, `biber main`, `pdflatex main.tex`, `pdflatex main.tex`.
- Required TeX Live packages on WSL: `texlive-publishers`, `texlive-lang-portuguese`, `texlive-bibtex-extra`, and `biber`.
- The project uses `abntex2` and `biblatex` with `style=abnt`.
- One failure source was `conteudo/2 - ages I/conteudo/figures/decola-time.jpg`; it had broken EXIF metadata and was fixed by stripping metadata with `exiftool -all= -overwrite_original`.
- Current remaining warnings are non-fatal: empty bibliography, duplicate labels, and some overfull hboxes.

## Build Scripts

Three shell scripts are available in the project root for compilation workflow:

- **`clean.sh`**: Removes all generated LaTeX compilation files (`.aux`, `.bbl`, `.bcf`, `.blg`, `.fdb_latexmk`, `.fls`, `.lof`, `.lot`, `.log`, `.run.xml`, `.toc`, `.pdf`) from root and subdirectories.
- **`compile.sh`**: Runs the **complete** compile sequence (3x `pdflatex`, 1x `biber`). Use when changing references, bibliography, or document structure. Automatically removes Zone.Identifier files before compiling.
- **`compile-fast.sh`**: Runs **incremental** compilation (2x `pdflatex` only, no biber). Faster option when changing **only text content**. Skip this if you modified references or bibliography.

Usage:
```bash
./clean.sh                    # Clean build artifacts
./compile.sh                  # Full compile (references + bibliography)
./compile-fast.sh             # Fast compile (text changes only)
./clean.sh && ./compile.sh    # Full clean rebuild
```

**When to use which:**
- First build or structural changes -> `./clean.sh && ./compile.sh`
- After editing text only -> `./compile-fast.sh`
- Changed any `.bib` files or references -> `./compile.sh` (or clean + compile)

## Project Cleanup

- Zone.Identifier files are automatically removed by `compile.sh` before each build.
- All temporary Windows metadata is ignored by `.gitignore`.
- `.gitignore` configured to exclude all LaTeX build artifacts from version control.

## Copilot Behavior (Repository-Specific)

Use these rules as defaults when assisting in this repository:

- Write responses in Brazilian Portuguese unless the user explicitly asks for another language.
- Preserve the project's ABNT/academic tone in report text sections.
- Prefer minimal, local edits; avoid rewriting large unrelated blocks.
- Preserve existing LaTeX structure and naming conventions used in `conteudo/`.
- Keep URLs clickable by using the project wrapper command `\urlref{...}` in body text.
- Do not replace existing bibliography strategy (`biblatex` + `style=abnt`) unless explicitly requested.
- For text-only edits, validate with `./compile-fast.sh`.
- For reference, citation, `.bib`, or structural changes, validate with `./compile.sh`.
- Treat these warnings as known/non-blocking unless the user asks to fix them: empty bibliography, duplicate labels, and overfull hboxes.

## Editing Guidance for AGES Sections

- Keep wording clear, objective, and technically grounded.
- Prefer short paragraphs and avoid redundant phrasing.
- When improving a section, infer details from available project artifacts (figures, wiki links, previous sections), but do not invent unverifiable facts.
- If uncertainty exists, keep phrasing conservative (e.g., "foi adotado", "foi utilizado", "permitiu").

## Memorial Authenticity Rules

- This is a personal report: preserve first-person factual narrative when the section is reflective.
- Never invent metrics, outcomes, tools, roles, or incidents that are not supported by project artifacts.
- Every strong claim should be traceable to local evidence (sprint event, figure, decision, or deliverable).
- Avoid "hero" framing; reflect team collaboration, constraints, and trade-offs.
- Keep maturity progression realistic by AGES level (AGES I discovery -> AGES IV leadership).

## Section-Level Checklist (Operational)

- Introducao: stakeholder context, problem framing, and scope for that AGES level.
- Desenvolvimento: real stack, architecture/data decisions, and rationale/trade-offs.
- Atividades/Sprints: objective, challenge, action, outcome, and learning per sprint.
- Conclusao: explicit personal growth with concrete examples from the section.
- Figures and links: unique labels, descriptive captions, and URL handling via `\urlref{...}`.

Detailed iteration checklist:
- `copilot-context/memorial-iteracao-checklists.md`

## Iteration Review Gates

- Content gate: coherence and fidelity to lived experience.
- Technical gate: consistency of terms, architecture, data model, and acronyms.
- Formal gate: flow, figures/labels/links, and successful compilation.
- Consider a section complete only after passing all three gates.

## Acronym Workflow (Siglas)

- Before using any new acronym with `\ac{key}`, add its definition in `conteudo/0 - pre/0.8 - siglas.tex` using `\acro{key}[ABREV]{Nome Completo}`.
- Prefer acronym macros in prose (`\ac{...}`) over raw uppercase terms (e.g., `API`, `SQL`) when the acronym is defined.
- If a term appears only once and does not help readability as an acronym, keep plain text and do not add noise to `siglas.tex`.
- After acronym edits, run a quick check for consistency:
	- Search acronym usage: `rg "\\ac\\{" conteudo`
	- Search acronym definitions: `rg "\\acro\\{" "conteudo/0 - pre/0.8 - siglas.tex"`
- For text-only changes, validate with `./compile-fast.sh`; for structural/reference changes, use `./compile.sh`.
