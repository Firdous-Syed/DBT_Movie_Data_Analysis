-- Windows
To Create a virtual environment using venv:
python -m venv venv

Activate the environment:
.\venv\Scripts\Activate.ps1

To install DBT with snowflake
pip install dbt-snowflake==1.9.0

To create the dbt user: 
mkdir %userprofile%\.dbt