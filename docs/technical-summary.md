# Technical summary

This document separates report statements, code/model evidence and engineering
interpretation. It does not convert unexecuted simulations into verified results.

## Physical system

### Labs 4-5: AC microgrid cluster

The system consists of two inverter-interfaced distributed generators connected
through unequal, predominantly inductive feeders to a point of common coupling.
The PCC includes resistive, constant-current and constant-power loads. Each DG
uses local active/reactive power measurements and voltage/current feedback.

The final report treats the converter interface as a controlled voltage source
for the droop-control study. The saved model contains Simscape Electrical
controlled sources, passive elements, sensors and physical-signal converters.

### Lab 6: switching voltage-source inverter

The grid-forming model represents a three-phase converter supplied by an 800 V
DC link and connected through an LC filter. PWM produces switching voltages;
an outer voltage loop generates dq current references and a faster inner current
loop generates dq voltage commands. The grid-following model adds a grid and PLL
and operates principally as a controlled current source.

## Control models

### Droop control

For a predominantly inductive network, the report assumes active power is mainly
coupled to phase/frequency and reactive power to voltage magnitude:

$$\omega_i=\omega_n-m_i(P_i-P_{i,n}),\qquad
V_i=V_n-n_i(Q_i-Q_{i,n}).$$

Instantaneous dq power is written as

$$P=\frac{3}{2}(V_dI_d+V_qI_q),\qquad
Q=\frac{3}{2}(V_qI_d-V_dI_q),$$

then passed through first-order low-pass filters. Because frequency is a global
steady-state quantity, appropriately scaled P-f coefficients support
proportional active-power sharing. Local voltage drops depend on feeder
impedance, so classical Q-V droop does not guarantee reactive-power sharing.

### Q-V-estimated reactive-power sharing

The report describes a local PCC-voltage estimate based on terminal voltage,
current and known line impedance. A voltage-error gain modifies the reactive
power command. It also discusses virtual impedance, virtual power and nonlinear
droop as alternatives. The saved Lab 4-5 model contains a subsystem named
`Freq Droop Modified`; the precise active variant must be checked interactively.

### Secondary frequency restoration

An integral term on DG1 acts on frequency error. The report says this restores
nominal frequency but causes DG1 to absorb most of the load deviation, losing
proportional active-power sharing. Although described as communication-free,
the report also states that DG1's phase angle is passed to DG2; that ambiguity
must be resolved before presenting the architecture as communication-free.

### Grid-forming inverter

The report models the filter in the dq frame, including resistive drop and
cross-coupling terms. The model contains two embedded MATLAB Functions:

$$V_d^*=L\nu_d+r_LI_d+V_{cd}-L\omega I_q,$$
$$V_q^*=L\nu_q+r_LI_q+V_{cq}+L\omega I_d,$$

and

$$I_d^*=C\nu_{Vd}+I_{Ld}-C\omega V_{cq},$$
$$I_q^*=C\nu_{Vq}+I_{Lq}+C\omega V_{cd}.$$

These expressions are confirmed in the saved SLX archive. The current-loop
natural frequency is ten times the voltage-loop value (12,000 versus
1,200 rad/s), consistent with the required cascade separation.

### Grid-following inverter

A PLL estimates grid angle and frequency for dq transformations. With the d-axis
aligned to grid voltage, the report uses active and reactive power references to
derive current references. The inner dq current controller adjusts converter
voltage commands; the external grid supplies the voltage/frequency reference.

## Parameters and units

| Symbol/quantity | Value | Unit | Source |
|---|---:|---|---|
| Lab 4-5 switching frequency | 15,000 | Hz | Parameter script |
| DG1 rating | 3,000 / 1,500 | W / VAr | Parameter script and report |
| DG2 rating | 4,000 / 750 | W / VAr | Parameter script; active rating conflicts with report |
| DG rated voltage/frequency | 110 / 60 | V / Hz | Parameter script |
| Feeder 1 | 0.2 / 1 | ohm / mH | Parameter script |
| Feeder 2 | 0.1 / 5 | ohm / mH | Parameter script |
| Droop allowances | 10 / 1 | rad/s / V | Parameter script and report |
| Lab 6 switching frequency | 20,000 | Hz | Parameter script |
| Lab 6 DC link | 800 | V | Parameter script |
| Lab 6 LC filter | 1 / 300 | mH / uF | Parameter script |
| Lab 6 current/voltage bandwidth parameters | 12,000 / 1,200 | rad/s | Parameter script |
| Damping ratio | 1/sqrt(2) | dimensionless | Parameter script |
| PLL bandwidth parameter | 1 | rad/s, inferred from name/comment | Parameter script |

## Reported results

The report's plots support qualitative observations of sharing and tracking.
It additionally states a 20-to-40 V grid-forming reference step, less than 5%
overshoot, a 0-to-4 A grid-following d-axis current step, approximately
+/-0.5 A ripple, an approximately -85 V q-axis-voltage undershoot and about
0.10 s settling. No exported arrays or calculation script were supplied to
independently confirm those metrics.

## Dimensional and terminology review

- Active droop `m` has dimensions rad/(s W) when angular-frequency deviation is
  in rad/s; reactive droop `n` has V/VAr.
- The report alternates among frequency in hertz, angular frequency in rad/s and
  the symbol omega. Conversions must be explicit.
- `VrmsRef`, `V1_rated` and dq-axis voltage quantities are not interchangeable
  without stating RMS/peak and transformation conventions.
- The model's `T32` uses a power-invariant transformation factor sqrt(2/3).
- The report's sign conventions for injected/absorbed Q and grid-following
  current are not stated consistently enough for cross-case numeric comparison.
- “Average model” and “switching harmonics” are used together in one discussion;
  the exact model variant behind that observation is uncertain.

## Validation boundary

Confirmed by inspection: file relationships, saved durations, component types,
parameter values, two embedded grid-forming control equations and R2025a model
metadata. Supported only by the report: plotted dynamic performance and all
transient metrics. Interpretation: the hierarchy is physically consistent with
standard inverter control, but model stability and fidelity remain unverified.
