In this Eccomerce Sales analysis i have also used a Python file for Preprocessing the data where i have excuted following Operations for changing names of the column to excute the queries in SQL.

step 1:-
Importing Pandas:
import pandas as pd: This line imports the pandas library, which is used for data manipulation and analysis.

step2:-
Loading Data:
df_details = pd.read_csv('C:/Users/sahil/Downloads/Details.csv'): This line loads data from the Details.csv file into the df_details DataFrame.
df_orders = pd.read_csv('C:/Users/sahil/Downloads/Orders.csv'): This line loads data from the Orders.csv file into the df_orders DataFrame.

step3:-
Displaying DataFrames:
df_details.head(): This line displays the first few rows of the df_details DataFrame.
df_orders.head(): This line displays the first few rows of the df_orders DataFrame.

step4:-
Checking for Missing Values:
df_orders.isnull().sum(): This line checks for missing values in each column of the df_orders DataFrame.

step5:-
Renaming Columns:
df_details.rename(columns={'Sub-Category': 'Sub_Category'}, inplace=True): This line renames the Sub-Category column to Sub_Category in the df_details DataFrame.

step6:-
Saving Modified DataFrames:
df_orders.to_csv('Orders.csv', index=False): This line saves the df_orders DataFrame to a new CSV file named Orders.csv without the index.
df_details.to_csv('Details.csv', index=False): This line saves the df_details DataFrame to a new CSV file named Details.csv without the index.
