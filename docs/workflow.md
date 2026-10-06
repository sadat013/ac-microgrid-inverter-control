# MATLAB and Simulink workflow

## File map

| Case | Parameter file | Model | Saved horizon |
|---|---|---|---:|
| Lab 4-5 droop | `ParametersLAb4_6_StudentVersion.m` | `Lab4_6_StudentVersion.slx` | 30 s |
| Lab 6 grid-forming | `parameters_StudentVersion.m` | `inverter_switching_StudentVersion.slx` | 0.2 s |
| Lab 6 grid-following | `parameters_StudentVersion.m` | `inverter_switching_GridFollowing_StudentVersion.slx` | 0.2 s |

## Safe inspection order

1. Clone the repository and start MATLAB R2025a from its root.
2. Run `project_files` to verify that all five source artifacts are present.
3. Change into exactly one model directory.
4. Read the relevant parameter script before executing it. Both scripts clear
   workspace state; Lab 6 also opens a margin plot.
5. Run the script and open, but do not immediately simulate, the selected SLX.
6. Record manual-switch positions, active droop variant, reference steps,
   signal-logging selections and solver settings.
7. Only then run the intended case and export signals with names, units and time.

The project contains no automated scenario switcher. Do not put old Lab 1-3
folders on the path or substitute similarly named source models.

## Expected signal flow

### Droop case

Measured three-phase voltage/current -> dq transformation -> P/Q calculation ->
power filtering -> classical or modified droop -> magnitude/frequency reference
-> controlled VSI -> feeder/PCC loads. Secondary control adds slow integral
correction to the primary reference.

### Grid-forming case

Voltage reference -> outer voltage tracking controller -> dq current reference
-> inner current tracking controller -> dq voltage command -> inverse transform
-> PWM/gate driver -> switching converter -> LC filter -> load.

### Grid-following case

Grid voltage -> PLL -> synchronous angle -> P/Q command to dq current reference
-> inner current controller -> PWM/gate driver -> converter current injection.

## Reproduction record for future runs

For each generated result, save:

- Git commit and hashes of the SLX and parameter script;
- MATLAB release and installed product versions;
- initial switch positions and selected control branch;
- all parameter overrides;
- solver, maximum/fixed step and stop time;
- applied load/reference step time and magnitude;
- exported signals, units, sign conventions and sample times.

No simulation was run during curation, so there is no verified command that
reproduces every report figure without manual model inspection.
