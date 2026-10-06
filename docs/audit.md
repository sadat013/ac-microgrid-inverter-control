# Project audit

## Source inventory

The original `Microgrid MGMT` directory contains 66 files totaling 102,692,364
bytes. It was not a Git repository. All source files were SHA-256 inventoried
before curation; the inventory remains local under `_private/audit/`.

| Category | Important contents | Treatment |
|---|---|---|
| Final AC/DC report | 24-page PDF and equivalent DOCX | Read completely; local publication hold |
| Lab 4-5 | One SLX, one parameter script, two-page instructions | SLX/M published candidate; instructions held locally |
| Lab 6 | Grid-forming SLX, grid-following SLX, parameter M file, four-page instructions | SLX/M published candidate; instructions held locally |
| Working notes | Combined lab-notes DOCX with Labs 1-6 | Held locally; only AC/DC notes informed the audit |
| Earlier labs | Lab 2-3 models, parameters, instructions and figures | Excluded as DC/DC scope |
| Lectures/references | Course slides, DC/DC material and reports from other students | Excluded |
| Generated files | `slprj`, `.slxc`, MAT caches, autosave | Excluded |
| Archives | Lab 2, Lab 3 and Lab 4-5 ZIPs | Excluded as duplicates |
| Informal media | Two messaging-app photographs | Excluded |

## Important file roles

| File | Role |
|---|---|
| `models/lab4-5-droop/Lab4_6_StudentVersion.slx` | Two-DG AC microgrid with PCC loads, classical/modified droop and secondary control |
| `models/lab4-5-droop/ParametersLAb4_6_StudentVersion.m` | Electrical ratings, line/load parameters, droop and restoration gains |
| `models/lab6-inverters/inverter_switching_StudentVersion.slx` | Grid-forming switching VSI, PWM, LC filter and cascaded dq control |
| `models/lab6-inverters/inverter_switching_GridFollowing_StudentVersion.slx` | Grid-following switching VSI, PLL and dq current control |
| `models/lab6-inverters/parameters_StudentVersion.m` | Shared electrical, loop-bandwidth, switching and PLL definitions |
| `src/matlab/project_files.m` | Added non-invasive file locator and manifest |
| `tests/test_project_files.m` | Added non-simulation file-presence check |

## Scope decision

The phrase “AC/DC converters” is interpreted as three-phase voltage-source
inverters converting a DC link to/from an AC microgrid, not as the earlier
DC/DC converter labs. Lab 4-5 supplies system-level AC microgrid control; Lab 6
supplies converter-level grid-forming and grid-following control.

The original directory remains unchanged. Exact copy hashes are recorded in
`_private/audit/copy-manifest.csv`.

## Publication review

The included model files are course-provided student versions with embedded
creator metadata. Existing metadata and notices were not stripped. The final
report, course instructions, university branding, unrelated student reports and
private audit details are not public Git candidates. See the root third-party
notice before redistribution.
