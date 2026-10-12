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

My contribution centered on the engineering analysis and technical documentation
of the AC/DC converter and three-phase inverter models. Drawing on my electrical
engineering and power-electronics background, I analyzed PWM switching and the
DC link, synchronous dq transformations, cascaded voltage and current control,
PLL-based grid-following operation, and grid-forming voltage and frequency
control. I also interpreted transient and steady-state simulation behavior and
connected converter-level operation to the wider microgrid control objectives.
Team report coauthor: Elisabeth von Schoenberg. Course model templates must not
be presented as solely authored work.

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

I learned to connect system-level energy-management objectives with
converter-level control design. The project strengthened my understanding of
how grid-forming and grid-following inverters interact with the wider microgrid,
and how reference-frame transformations, control-loop bandwidth hierarchy,
network impedance, synchronization, and signal conventions influence stability
and performance. It also showed me the importance of linking theoretical
power-electronics concepts with practical controller implementation and
simulation results.

## Portfolio visuals

1. [Droop-controlled two-DG microgrid](../figures/microgrid-droop-architecture.svg) -
   original redraw showing the unequal feeders and PCC load types.
2. [Grid-forming versus grid-following](../figures/grid-forming-vs-grid-following.svg) -
   original control and system-role comparison.
3. [Grid-forming dq tracking](../figures/grid-forming-dq-tracking-report.png) and
   [grid-following dq tracking](../figures/grid-following-dq-tracking-report.png) -
   team-report figures that were not independently rerun.
4. [Controller bandwidth hierarchy](../figures/controller-bandwidth-hierarchy.svg) -
   original log-frequency diagram based on the Lab 6 parameter file.

The report-sourced tracking figures require team-report attribution and remain
outside the repository's MIT license. A fresh, documented simulation export
would provide stronger reproducibility evidence in a future revision.

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
explicit parameter, evidence and licensing boundaries. My contribution focused
on analyzing and documenting AC/DC converter and three-phase inverter behavior,
including PWM, DC-link dynamics, dq-frame regulation, PLL-based grid following,
grid-forming control, and the interpretation of transient and steady-state
simulation results.
