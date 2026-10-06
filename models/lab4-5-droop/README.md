# Lab 4-5 droop-control model

`Lab4_6_StudentVersion.slx` models two inverter-interfaced distributed
generators connected to a three-phase AC network and PCC loads. Its subsystems
include controlled VSIs, conventional and modified droop control, coordinate
transformations, measurements, a constant-power load and a constant-current
load. The saved model runs from 0 to 30 s.

Run `ParametersLAb4_6_StudentVersion.m` before opening the model. The parameter
script defines transformations, switching frequency, line impedances, PCC/load
elements, DG ratings, droop coefficients and secondary-control gains. It starts
with `clear all` and `clc`.

The report labels DG2 as 1 kW, while this script sets `P2_rated = 4000` W.
That inconsistency is documented and intentionally not corrected.
