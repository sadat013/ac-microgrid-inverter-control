function tests = test_project_files
%TEST_PROJECT_FILES Non-simulation checks for the curated file manifest.
tests = functiontests(localfunctions);
end

function manifestContainsBothCases(testCase)
repoRoot = fileparts(fileparts(mfilename("fullpath")));
addpath(fullfile(repoRoot, "src", "matlab"));
cleanup = onCleanup(@() rmpath(fullfile(repoRoot, "src", "matlab")));

cases = project_files();
verifyEqual(testCase, string({cases.Name}), ...
    ["lab4-5-droop", "lab6-inverters"]);
verifyEqual(testCase, numel(cases(1).ModelFiles), 1);
verifyEqual(testCase, numel(cases(2).ModelFiles), 2);
verifyTrue(testCase, all(isfile([cases.ParameterFile])));
verifyTrue(testCase, all(isfile([cases.ModelFiles])));
clear cleanup
end
