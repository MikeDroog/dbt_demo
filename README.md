### Demo environment

### Tutorials

### dbt_project.yml
2 changes from the default :
- Named the project
- Created the models layout

### dbt_project.yml naming the project
The name of a dbt project. Must be letters, digits and underscores only, and cannot start with a digit.

### dbt_project.yml
Creating the structure and using it to differentiate
Be sure to include the project name !


### Directory structure
The directory structure is used to keep an overview AND to create certain things from certain folders.

However, specifics always overrule the structure!

### sources
A source is a pointer towards a source of data, usually raw data. It is just a .yml file , NO .SQL!In this case , we’ve pointed it towards the Sample dataset
A source will, at a minimum, consist of the name that you’ll reference it as , databases and schemas:

This .yml is created with one of our packages!

### sources
Formatted as source(‘<name in source file> , <table>)

### packages
Packages are similar to Python module and are imported in 2 steps (if they’re on the hub) :
Declare the name and version in the packages.yml file
Run the command dbt deps

### macros
This demo uses 2 macros :
One set from the code gen package (see the analyses folder to see them
One custom macro that overwrites a dbt mechanic (see the macros folder to see it)


### Macros : Codegen
https://hub.getdbt.com/dbt-labs/codegen/latest/
Macros that generate dbt code, and log it to the command line.
2 ways of generating the code
Compiling a macro 
Call the macro as an operation



### Macros : custom macro


### Macros : custom macro
A popular macro to prevent the following : 
In the project.yml , we can give alternative schemas to models. This however, works as a <target_schema>_<custom_schema> notation. 
