# logistic_lasso_reg
Using logistic lasso regression with 10-fold cross-validation to identify useful predictors in CellDNA dataset. 

Dataset contains various measurements such as size, center and etc. from thousands of bacterium under microscope. 
The non-zero values in the last column are target responses that indicate the bacterium (rows) that are interesting
enough for further study. The 0s in the last column indicate the bacterium are NOT interesting candidates for further study.
