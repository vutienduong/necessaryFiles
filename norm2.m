% List of open inputs
% Normalise: Estimate & Write: Source Image - cfg_files
% Normalise: Estimate & Write: Images to Write - cfg_files
nrun = X; % enter the number of runs here
jobfile = {'D:\RESEARCH\spm8\toolbox\aal\data and save\header files changed to PET Eng name\norm2_job.m'};
jobs = repmat(jobfile, 1, nrun);
inputs = cell(2, nrun);
for crun = 1:nrun
    inputs{1, crun} = MATLAB_CODE_TO_FILL_INPUT; % Normalise: Estimate & Write: Source Image - cfg_files
    inputs{2, crun} = MATLAB_CODE_TO_FILL_INPUT; % Normalise: Estimate & Write: Images to Write - cfg_files
end
spm('defaults', 'FMRI');
spm_jobman('serial', jobs, '', inputs{:});
