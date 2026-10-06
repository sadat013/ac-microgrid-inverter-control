# Lab 6 inverter models

- `inverter_switching_StudentVersion.slx`: grid-forming switching VSI with PWM,
  LC filter, outer capacitor-voltage control and inner inductor-current control.
  It contains two MATLAB Function implementations for dq decoupling.
- `inverter_switching_GridFollowing_StudentVersion.slx`: grid-following VSI with
  PLL, current regulation, PWM and an explicit grid subsystem.
- `parameters_StudentVersion.m`: shared electrical, controller, switching and
  PLL parameters.

Both models have a saved stop time of 0.2 s. Run the parameter script before
opening one model. The script calls Control System Toolbox functions and opens
a margin plot. It also defines a 50 Hz `Fref` and a 60 Hz PLL/grid `wrated`;
the intended use of the two references requires confirmation.

The grid-forming model's embedded dq control functions are preserved inside the
SLX archive. No equations or controller constants were changed during curation.
