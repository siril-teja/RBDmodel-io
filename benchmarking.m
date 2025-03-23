% Define model name
modelName = 'RBDmodel_io';

% Load the model
load_system(modelName);

% Number of runs
numRuns = 10;

% Initialize arrays to store compile and run times
compileTimes = zeros(1, numRuns);
runTimes = zeros(1, numRuns);

% Loop for multiple runs
for i = 1:numRuns
    % Measure compile time
    tic;
    set_param(modelName, 'SimulationCommand', 'update');
    compileTimes(i) = toc;
    
    % Measure run time
    tic;
    sim(modelName);
    runTimes(i) = toc;
end

% Compute statistics
avgCompileTime = mean(compileTimes);
stdCompileTime = std(compileTimes);

avgRunTime = mean(runTimes);
stdRunTime = std(runTimes);

% Display results
fprintf('Compile Time: Avg = %.4f sec, SD = %.4f sec\n', avgCompileTime, stdCompileTime);
fprintf('Run Time: Avg = %.4f sec, SD = %.4f sec\n', avgRunTime, stdRunTime);

% Close the model without saving
close_system(modelName, 0);
