Data Analysis Course XXXX-XXXX-X
================

**Note to those forking this repository: Replace XXXX-XXXX-X with the years of the course and season of course everywhere here so that everything works**

This is the repository that we will use for our collaborative work and for uploading all the assignments for our course.

This is the normal process that you will have to follow in order to interact with the repository:

* Fork the main repository into your own account (this will generate a new repository in your GitHub account). This is done only once during the course. 
* If you had already forked the repository some time ago, you may want to sync your repository to the latest version that is now available. This is done by [configuring the remote for a fork](https://help.github.com/articles/configuring-a-remote-for-a-fork) and [syncing your fork](https://help.github.com/articles/syncing-a-fork). Basically, you have to:
 * Establish remote:

        git remote add upstream https://github.com/SmartEra-Academy/DataAnalysisCourseXXXX-XXXX-X
        

 * Fetch any changes to it: 
 
        git fetch upstream
 
 * Checkout the local master branch of your fork: 
 
        git checkout master
 
 * Merge changes from the remote into your master branch: 
 
        git merge upstream/master

* Make any changes to your repository, according to the specific assignment.
* Commit your changes into your local repository.
* Push your changes to your online repository.
* Make a pull request, so that we can check your changes and accept them into the master of the general repository. If everything is okay, your changes will be incorporated into the main repository. If not, you will receive a message explaining why not.

**Assignment 1**. Please fill in a line with a dataset description at folder [Assignment 1_1](./Assignment1/DatasetDescriptions.csv) also fill requested information at folder [Assignment1_2](./Assignment1/StudentsData.csv), and make a pull request.

**Group Assignment 1 - Teams Data**


**The following set of instructions will be updated as we progress during the course**

**Assignment 2 - Data Collection**
Start data collection, as we'll say at the session, and make the branch for that in your repository.

**Assignment 3 - Exploratory Data Analysis (EDA) with Python**. 

For this assignment, you are required to perform Exploratory Data Analysis (EDA) on a dataset of your choice and create a Python package for EDA.

1. **EDA Report**: Perform a comprehensive EDA on the dataset. Your analysis should include:
   - Summary statistics
   - Handling missing values
   - Insights and interpretations from the data
   - Use IEDA on your dataset

2. **Create an EDA Package**: Develop a Python package that automates the EDA process. Your package should include:
   - Functions for loading and drop missing data
   - Functions for generating summary statistics
   - A main function that produces a complete EDA report from a given dataset
   - Add IEDA option to your EDA package

Upload your Jupyter notebooks (.ipynb), scripts (.py), and the package files in the GitHub repository. Comment on the notebooks or scripts from your colleagues (if you wish), creating issues in the GitHub repository. This can be done in the [Assignment3](./Assignment3/) folder, using your **GitHub username - your FirstnameSecondname** format.

For example, I (my GitHub username is 'MohammadAminDHM') would upload the following files:
* MohammadAminDHM-MohammadaminDehmolaee.ipynb (the Jupyter notebook with EDA)
* MohammadAminDHM-MohammadaminDehmolaee.py (the Python script with EDA)
* MohammadAminDHM-EDAPackage/ (the folder containing the EDA package files)

**Note 1: Please add test file(Test.py) for testing your Package**

**Note 2: If you add your package at PyPi, you give a more score.**

**Group Assignment 2 - EDA**
...

**Assignment 4 - Data Preparation**.

For this assignment, you are required to perform data cleaning tasks on a given dataset. This involves:

1. **Handling Outliers**: 
   - Detecting outliers
   - Deciding on appropriate methods to handle them (removal, transformation, etc.)

2. **Denoising**:
   - Identifying noise in the data
   - Applying techniques to reduce or remove noise

3. **Removing Duplicates**:
   - Identifying duplicate entries
   - Removing duplicates to ensure data integrity

4. **Data Cleaning Class**:
   - Implement a Python class that performs the above data cleaning tasks
   - The class should have methods for handling outliers, denoising, and removing duplicates

5. **Documentation**:
   - Provide a detailed report of the steps taken during data cleaning
   - Include code snippets and explanations for each step
   - Document the class and its methods

Upload your Jupyter notebooks (.ipynb), scripts (.py), and the implemented class in the GitHub repository. Comment on the notebooks or scripts from your colleagues (if you wish), creating issues in the GitHub repository. This can be done in the [Assignment4](./Assignment4/) folder, using your **GitHub username - your FirtstnameSecondname** format.

For example, I (my GitHub username is 'MohammadAminDHM') would upload the following files:
- MohammadAminDHM-MohammadaminDehmolaee.ipynb (the Jupyter notebook with data cleaning)
- MohammadAminDHM-MohammadaminDehmolaee.py (the Python script with data cleaning)
- MohammadAminDHM-DataCleaningClass.py (the Python script with the implemented class)

**Group Assignment 3 - Data Preparation**
...

**Assignment 5 - Data Visualization**.

For this assignment, you are required to perform data visualization tasks using Plotly and Seaborn, and create an interactive dashboard. This involves:

1. **Data Visualization with Seaborn**:
   - Create various static plots (e.g., histograms, scatter plots, box plots, etc.) using Seaborn
   - Customize the plots to improve readability and aesthetics

2. **Interactive Visualization with Plotly**:
   - Create interactive plots (e.g., line charts, bar charts, scatter plots, etc.) using Plotly
   - Customize the interactive plots with tooltips, legends, and other interactive features

3. **Dashboard Creation**:
   - Combine the visualizations into an interactive dashboard
   - Use Plotly Dash or a similar tool to create the dashboard
   - Ensure the dashboard is user-friendly and visually appealing

4. **Documentation**:
   - Provide a detailed report of the steps taken during data visualization
   - Include code snippets and explanations for each plot and the dashboard
   - Document the dashboard and its features

Upload your Jupyter notebooks (.ipynb), scripts (.py), and the dashboard files in the GitHub repository. Comment on the notebooks or scripts from your colleagues (if you wish), creating issues in the GitHub repository. This can be done in the [Assignment5](./Assignment5/) folder, using your **GitHub username - your NameSurname** format.

For example, I (my GitHub username is 'MohammadAminDHM') would upload the following files:
- MohammadAminDHM-MohammadaminDehmolaee.ipynb (the Jupyter notebook with visualizations)
- MohammadAminDHM-MohammadaminDehmolaee.py (the Python script with visualizations)
- MohammadAminDHM-Dashboard/ (the folder containing the dashboard files)

**Group Assignment 4 - Data Visualization**

**Good luck and happy coding!**
