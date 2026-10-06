function cases = project_files()
%PROJECT_FILES Locate the curated AC microgrid MATLAB/Simulink cases.
%   CASES = PROJECT_FILES() returns a structure array describing the Lab 4-5
%   droop-control model and the two Lab 6 inverter models. It checks that the
%   exact parameter and model files exist but does not run scripts, open models,
%   change the MATLAB path, modify the base workspace, or start a simulation.
%
%   Inputs:  none.
%   Output:  structure array with Name, ParameterFile, ModelFiles and Notes.
%   Units:   not applicable; physical units are documented in the parameter
%            scripts and repository README.
%   Requires: MATLAB only for this locator. Opening models requires Simulink,
%             Simscape and Simscape Electrical. The Lab 6 parameter script also
%             uses Control System Toolbox functions TF and MARGIN.

arguments (Output)
    cases (1,2) struct
end

thisFile = mfilename("fullpath");
repoRoot = fileparts(fileparts(fileparts(thisFile)));

droopDir = fullfile(repoRoot, "models", "lab4-5-droop");
inverterDir = fullfile(repoRoot, "models", "lab6-inverters");

cases(1) = makeCase( ...
    "lab4-5-droop", ...
    fullfile(droopDir, "ParametersLAb4_6_StudentVersion.m"), ...
    fullfile(droopDir, "Lab4_6_StudentVersion.slx"), ...
    "Two-DG droop, Q-V-estimated sharing and secondary control; saved stop time 30 s.");

cases(2) = makeCase( ...
    "lab6-inverters", ...
    fullfile(inverterDir, "parameters_StudentVersion.m"), ...
    [fullfile(inverterDir, "inverter_switching_StudentVersion.slx"), ...
     fullfile(inverterDir, "inverter_switching_GridFollowing_StudentVersion.slx")], ...
    "Grid-forming and grid-following switching VSI models; saved stop time 0.2 s.");
end

function item = makeCase(name, parameterFile, modelFiles, notes)
files = [parameterFile, modelFiles];
missing = files(~isfile(files));
if ~isempty(missing)
    error("acdc:MissingProjectFile", ...
        "Required project file is missing: %s", strjoin(missing, ", "));
end

item = struct( ...
    "Name", name, ...
    "ParameterFile", parameterFile, ...
    "ModelFiles", modelFiles, ...
    "Notes", notes);
end
