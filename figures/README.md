# Figure guide and provenance

This directory contains original explanatory diagrams and two figures extracted
from the project team's report. The distinction matters for attribution,
licensing and reproducibility.

| File | Purpose | Provenance and status |
|---|---|---|
| `microgrid-droop-architecture.svg` | Two-DG droop-control topology, unequal feeders and PCC loads | Newly drawn for this repository from the system described on page 1 of the local course handout *Lab session 4-6*. It does not reproduce the handout artwork. |
| `grid-forming-vs-grid-following.svg` | Side-by-side control and system-role comparison | Newly drawn synthesis based on the team's report, especially Figures 11 and 14, and pages 1-4 of the local *Lab session 6* handout. |
| `controller-bandwidth-hierarchy.svg` | Log-frequency view of PWM, current-loop, voltage-loop and PLL parameters | Newly drawn from `models/lab6-inverters/parameters_StudentVersion.m` and the documented conversions in `docs/technical-summary.md`. |
| `grid-forming-dq-tracking-report.png` | Grid-forming current and voltage tracking | Original high-resolution image embedded in the team Word report (`word/media/image20.png`), published there as Figure 13. Report-sourced result; not independently rerun during repository preparation. |
| `grid-following-dq-tracking-report.png` | Grid-following current and voltage tracking | Original high-resolution image embedded in the team Word report (`word/media/image23.png`), published there as Figure 15. Report-sourced result; not independently rerun during repository preparation. |

## Interpreting the bandwidth figure

The frequency conversion uses `f = omega/(2*pi)`:

| Control layer | Parameter evidence | Displayed frequency |
|---|---:|---:|
| PWM switching | `Fs = 20000 Hz` | 20 kHz |
| Inner current loop | `WnIdq = 12000 rad/s` | approximately 1.91 kHz |
| Outer voltage loop | `WnVdq = 1200 rad/s` | approximately 191 Hz |
| PLL | `wcpll = 1 rad/s` | approximately 0.159 Hz |

The current-loop natural frequency is ten times the voltage-loop value. The
unresolved `Fref = 50 Hz` versus `wrated = 2*pi*60 rad/s` inconsistency is shown
as a warning and has not been silently corrected.

## License boundary

The three SVG diagrams are original repository documentation. The two PNG
tracking figures remain report-derived academic material and are not covered by
the repository's MIT license. They must be presented with team-report
attribution and the statement that the simulations were not independently rerun.
