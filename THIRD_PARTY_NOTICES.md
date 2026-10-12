# Attribution and license scope

The root MIT license applies to original project code and accompanying authored
repository documentation to the extent that the contributors hold the rights.
It does not automatically relicense course-provided templates, MATLAB/Simulink
library blocks, the original report, university branding, or other third-party
material.

## Course-provided models

The `.slx` files are student-version laboratory models supplied in the DENSYS
Microgrid Management module and subsequently modified during the project. Their
embedded metadata identifies Milad Bahrami or Hassan as original creators and
`sadat` as a modifier on two models. Those records are retained. Confirm the
course/institution redistribution terms before relying on the MIT grant for the
model templates themselves.

The repository documents the models as academic derivatives. It does not claim
ownership of MATLAB, Simulink, Simscape or Simscape Electrical components.
Those products and block libraries remain subject to MathWorks terms.

## Report and teaching material

The final report credits Elisabeth von Schoenberg and Md Atiq Aziz and names
Dr. Serge Pierfederici as the instructor. The full original report, instructions,
lecture material, university logos and unrelated student reference reports are
not included in the public Git candidate. Local reference copies are retained
under `_private/`, which is ignored by Git.

## Portfolio figures

The SVG diagrams in `figures/` were newly drawn for this repository from the
documented system topology, controller descriptions and parameter evidence. No
course-handout page or university branding is reproduced in those diagrams.

`grid-forming-dq-tracking-report.png` and
`grid-following-dq-tracking-report.png` are high-resolution images extracted
from the project team's Word report and correspond to report Figures 13 and 15.
They are included with team-report attribution as report-sourced simulation
observations. They were not independently regenerated during repository
preparation and are excluded from the repository's MIT license.

## Scope boundary

This repository covers AC-side energy management and three-phase AC/DC voltage-
source converters from Labs 4-6. DC/DC converter work from Labs 1-3 is outside
scope and is neither copied nor licensed here.
