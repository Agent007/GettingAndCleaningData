My R code solution to the "Getting and Cleaning Data" class on Coursera.org

The sole R script (run_analysis.R) simply extracts data included in the “UCI HAR Dataset” subfolder to produce the final tidy text data output (tidy.txt). To reproduce the tidy data:

* Clone this repository
* Change your working directory to your new local copy of this repository
* Run the R script

PRE-REQUSITES: The R script relies on the data.table package, so be sure it is installed in your copy of R before running the script!

Below are the exact commands I ran on Mac OS X Mavericks. The commands may be different on your system:

git clone git@github.com:Agent007/GettingAndCleaningData.git ~/Desktop/project
cd ~/Desktop/project
r --no-save < run_analysis.R