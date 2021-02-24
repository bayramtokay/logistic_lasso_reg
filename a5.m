% Load dataset
df = readtable("CellDNA.csv");

% Define X and Y
Y = df(:,"Var14");
X = df(:, 1:13);

% Replacing values greater than 1 with 1 in dependent variable
Y.Var14(Y.Var14 > 1) = 1;

% Changing X, Y data type for computation
X = X{:,:};
Y = Y{:,:};

% Standardizing independent variables (X)
X = zscore(X);

% Regularizing Logistic Regression
[LB, FitInfo] = lassoglm(X, Y, "binomial", "NumLambda", 25, "CV", 10);

% Cross-Validated Deviance of Lasso Fit
lassoPlot(LB, FitInfo, "PlotType", "CV");

% Trace Plot of Coefficients Fit by Lasso
lassoPlot(LB, FitInfo, "PlotType", "Lambda", "XScale", "log");
