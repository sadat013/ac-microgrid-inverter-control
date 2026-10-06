# Issues, risks and missing information

| ID | Severity | Finding | Consequence |
|---|---|---|---|
| I01 | High | Report Table 1 gives DG2 as 1 kW; parameter script sets 4 kW | Droop coefficient and sharing ratio differ materially |
| I02 | High | Report calls secondary restoration communication-free but says DG1 phase is transmitted to DG2 | Architecture and communications requirement are ambiguous |
| I03 | High | Lab 6 script defines `Fref = 50` Hz and `wrated = 2*pi*60` rad/s | Grid-forming and PLL/grid frequency bases may be inconsistent |
| I04 | High | No exported numeric data accompanies report plots | Transient metrics and sharing errors cannot be recalculated |
| I05 | Medium | Grid-following model contains no extracted embedded MATLAB Function code, unlike grid-forming model | Completion state of the current-control task is uncertain without opening MATLAB |
| I06 | Medium | Manual-switch positions and active control branches are not documented | A run may exercise a different configuration from the report |
| I07 | Medium | Report section numbering jumps from 3 to 5 | Document traceability is weakened |
| I08 | Medium | Report describes average-model undulations as switching-harmonic interaction | Model type behind the claim is unclear |
| I09 | Medium | Report claims less than 5% overshoot without a supplied computation | Metric is report-only |
| I10 | Medium | Sign, RMS/peak and dq transformation conventions are incomplete | Voltage/current values cannot be compared safely across frames |
| I11 | Medium | Course-provided models have third-party creator metadata and no explicit redistribution notice | Public reuse terms require confirmation |
| I12 | Low | Parameter scripts use `clear`/`clear all`, `clc`, and un-terminated plotting commands | They modify interactive state and produce console/figure side effects |
| I13 | Low | Several parameter comments contain question marks and spelling inconsistencies | Design intent is not fully documented |
| I14 | Low | No README, license, test or environment record existed in the source | Reproducibility depended on local knowledge |

## Changes that require technical approval

The following were not applied because they could change model behavior:

1. Reconcile DG2 at 1 kW versus 4 kW. Expected effect: changes `m2`, the
   normalized sharing target and transient response.
2. Reconcile 50 Hz versus 60 Hz Lab 6 references. Expected effect: changes dq
   transformations, PLL synchronization and cross-coupling compensation.
3. Tune the PLL or inverter loops. Expected effect: changes settling, ripple,
   overshoot and stability margins.
4. Select or replace manual-switch/controller variants. Expected effect: changes
   the simulated architecture and invalidates direct comparison with saved plots.
5. Remove `clear`, plotting or console side effects from parameter scripts.
   Expected numerical effect should be none if refactored correctly, but the
   execution context changes and must be tested.

No equations, constants, SLX blocks or original parameter scripts were modified.
