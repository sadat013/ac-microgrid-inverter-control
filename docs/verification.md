# Verification report

Date: 6 October 2026.

## Completed checks

| Check | Outcome |
|---|---|
| Source inventory | 66 files, 102,692,364 bytes, SHA-256 inventoried |
| Final report review | All 24 pages read and visually inspected |
| Laboratory instructions | All 2 pages of Lab 4-6 and all 4 pages of Lab 6 read and visually inspected |
| Selected source copies | Five MATLAB/Simulink artifacts copied byte-for-byte; hashes match |
| Model archive inspection | Three SLX archives inspected for metadata, block types, subsystems, configuration and embedded code |
| MATLAB static analysis | R2025a `mlint.exe -id` reported no messages for the added manifest helper or test |
| Citation metadata | YAML parsed; two authors, MIT identifier and repository URL present |
| Publication-candidate checks | 24 Git-visible files; no broken local Markdown links, scope leaks or files at/above 100 MiB |
| Scope control | Labs 1-3 and DC/DC reports/models excluded |
| Original preservation | No original file intentionally edited, moved, renamed or deleted |

## Model evidence

| Model | Release metadata | Blocks inspected | Stop time | Solver evidence |
|---|---|---:|---:|---|
| `Lab4_6_StudentVersion.slx` | R2025a | 902 | 30 s | VariableStepAuto; max step 1e-4 s |
| `inverter_switching_StudentVersion.slx` | R2025a | 535 | 0.2 s | VariableStepAuto; max step 1e-6 s |
| `inverter_switching_GridFollowing_StudentVersion.slx` | R2025a | 465 | 0.2 s | `ode1be`; fixed step 1e-6 s |

The grid-forming archive contains two MATLAB Function scripts implementing the
documented dq current and voltage decoupling laws. Relevant physical blocks
identify Simscape and Simscape Electrical dependencies.

## Not executed or reproduced

- No MATLAB or Simulink model was opened, compiled or simulated.
- Toolbox availability was not queried in a working MATLAB session.
- The added MATLAB manifest test was not executed; it is a non-simulation check.
- Report figures were not regenerated.
- Power-sharing ratios, frequency restoration, current/voltage tracking,
  overshoot, ripple, settling time, THD, stability margins and energy balance
  remain unverified.
- No hardware, HIL or laboratory measurements were found.

## Evidence labels

“Confirmed” in the repository means visible in source files or saved SLX
archives. “Reported” means stated or plotted in the final report. “Interpretation”
means an engineering reading that has not been validated through execution.
