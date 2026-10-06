# Repository structure and copy map

The source directory was not a Git repository. This project is a new sibling
repository; every selected academic artifact was copied, never moved or renamed
in the original directory.

## Original-to-curated mapping

| Original path under `Microgrid MGMT` | Curated path | Treatment |
|---|---|---|
| `labs/45/Lab4_6_StudentVersion.slx` | `models/lab4-5-droop/` | Exact copy |
| `labs/45/ParametersLAb4_6_StudentVersion.m` | `models/lab4-5-droop/` | Exact copy |
| `labs/Lab 6-20260402/inverter_switching_StudentVersion.slx` | `models/lab6-inverters/` | Exact copy |
| `labs/Lab 6-20260402/inverter_switching_GridFollowing_StudentVersion.slx` | `models/lab6-inverters/` | Exact copy |
| `labs/Lab 6-20260402/parameters_StudentVersion.m` | `models/lab6-inverters/` | Exact copy |
| Final report PDF/DOCX | `_private/reports/` | Exact local copies; Git-ignored |
| Lab 4-6 and Lab 6 instructions | `_private/instructions/` | Exact local copies; Git-ignored |
| Combined lab notes | `_private/notes/` | Exact local copy; Git-ignored |
| Labs 1-3, DC/DC references, caches, archives and unrelated reports | No copy | Out of scope; source inventory retained |

The copy manifest includes byte counts and SHA-256 hashes under
`_private/audit/copy-manifest.csv`.

## Implemented structure

```text
ac-microgrid-inverter-control/
  README.md
  LICENSE
  CITATION.cff
  THIRD_PARTY_NOTICES.md
  CHANGELOG.md
  .gitignore
  models/
    lab4-5-droop/
    lab6-inverters/
  src/matlab/project_files.m
  tests/test_project_files.m
  docs/
    audit.md
    technical-summary.md
    workflow.md
    issues.md
    repository-structure.md
    portfolio.md
    verification.md
  report/README.md
  results/README.md
  _private/                  # local only, ignored
```
