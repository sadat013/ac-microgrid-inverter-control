# Portfolio summary

## Project title

AC Microgrid Energy Management and Inverter Control

## One-line description

MATLAB/Simulink modeling of decentralized power sharing and grid-forming/
grid-following control for three-phase inverter-interfaced microgrids.

## Project summary

This project studies control across two layers of an inverter-based AC
microgrid. At system level, two distributed generators use P-f and Q-V droop
control to share load without a centralized dispatcher. The work examines why
unequal feeder impedances degrade reactive-power sharing, applies a PCC-voltage-
estimation modification, and evaluates local secondary frequency restoration.
At converter level, switching voltage-source inverter models implement PWM, LC
filtering and dq-frame tracking control. The grid-forming case uses cascaded
voltage and current loops, while the grid-following case synchronizes through a
PLL and regulates current from active/reactive power references. The repository
organizes the original MATLAB/Simulink assets, documents parameters and model
boundaries, and clearly separates report observations from independently
verified evidence.

## Engineering challenge

Coordinate multiple inverter-interfaced sources so they share active and
reactive power while maintaining microgrid voltage and frequency, then implement
converter-level controllers with sufficient bandwidth separation and grid
synchronization.

## Contribution

Portfolio owner: **Md Atiq Aziz**.

Personal contribution: **[confirm which Simulink subsystems, controller laws,
parameter tuning, simulation cases, plots and report sections were completed by
Md Atiq Aziz]**. Team report coauthor: Elisabeth von Schoenberg. Course model
templates must not be presented as solely authored work.

## Tools and methods

MATLAB R2025a, Simulink, Simscape Electrical, dq transformations, P-f/Q-V
droop, Q-V-estimated reactive sharing, secondary integral control, PLL,
cascaded voltage/current tracking, PWM and LC filtering.

## Achievement bullets

- Modeled a two-DG AC microgrid with unequal feeder impedances and multiple PCC
  load types.
- Compared classical droop with a voltage-estimation method intended to improve
  reactive-power sharing.
- Developed grid-forming and grid-following three-phase inverter control
  architectures in the synchronous dq frame.
- Applied a 10:1 current-to-voltage loop natural-frequency separation in the
  Lab 6 parameterization.
- Documented reproducibility gaps and preserved three Simulink models with
  traceable parameter files.

These are project-scope achievements. Assign personal authorship only after the
contribution placeholder is confirmed.

## Key reported results

The report states that Q-V-estimated droop improves reactive-power balance,
local secondary control restores frequency at the expense of active-power
sharing, and the Lab 6 controllers track commanded dq quantities. It reports a
0-to-4 A d-axis current step and approximately -85 V startup q-axis undershoot
in the grid-following case. These are simulation-report observations, not
independently reproduced or measured results.

## Skills demonstrated

Microgrid control, power electronics, inverter modeling, distributed control,
dq-frame analysis, controller hierarchy, MATLAB/Simulink organization,
engineering documentation, source traceability and technical risk assessment.

## What I learned

[Confirm first-person wording.] Suggested text: “I learned to connect
system-level energy-management objectives with converter-level control design,
and to treat reference frames, bandwidth hierarchy, network impedance and
signal conventions as part of the same engineering problem.”

## Suggested visuals

1. A clean block diagram showing droop control, the two DG feeders and PCC loads.
2. A grid-forming versus grid-following control comparison.
3. A dq current/voltage tracking plot generated from a documented future run.
4. A parameter table showing controller bandwidth hierarchy.

Do not publish screenshots copied from the report until figure rights are
confirmed. Prefer newly exported model diagrams and reproducible plots.

## Suggested GitHub topics

`microgrid`, `matlab`, `simulink`, `simscape-electrical`, `power-electronics`,
`grid-forming`, `grid-following`, `droop-control`, `inverter-control`, `pll`

## CV bullet

Modeled distributed droop control and dq-frame grid-forming/grid-following
inverter controllers for a two-DG AC microgrid in MATLAB/Simulink, covering
reactive-power sharing, secondary frequency restoration, PWM and LC filtering.

## LinkedIn description

Developed an academic MATLAB/Simulink study of energy management in an
inverter-based AC microgrid. The work connects system-level P-f/Q-V droop and
secondary control with converter-level PWM, cascaded dq control and PLL-based
grid following. I also curated the project into a reproducible repository with
explicit parameter, evidence and licensing boundaries. Personal contribution:
**[confirm specific responsibilities before posting]**.
