# E-Commerce-Sales-Analysis


import click
from util.helps import colorful_greeting, loading_bar, AuthenticationNeeded, authenticated
import subprocess

# In-memory user storage
users = {}


class EcommerceReview:
    def __init__(self, username, password, cleanOrSetup):
        self.auth(username, password)
        if cleanOrSetup:
            self.__setup_database_queries()
        else:
            self.__cleanup_database()

    def auth(self, username, password):
        hashed_password = password
        users[username] = hashed_password
        authenticated(users, username)
    
    @AuthenticationNeeded
    def __setup_database_queries(self):
        try:
            subprocess.run(["chmod", "+x", "scripts/setup_database_queries.sh"], check=True)
        except Exception as e:
            print(f"Error occurred while setting execute permission: {e}")

        # Run the setup_database.sh script
        try:
            subprocess.run(["./scripts/setup_database_queries.sh"], check=True)
        except Exception as e:
            print(f"Error occurred while running the setup script: {e}")

    
    @AuthenticationNeeded
    def __cleanup_database(self): 
        try:
            subprocess.run(["chmod", "+x", "scripts/cleanup.sh"], check=True)
        except Exception as e:
            print(f"Error occurred while setting execute permission: {e}")

        # Run the setup_database.sh script
        try:
            subprocess.run(["./scripts/cleanup.sh"], check=True)
        except Exception as e:
            print(f"Error occurred while running the setup script: {e}")
    
    @AuthenticationNeeded
    def startTheUI(self):
        """ 
            Connect to database for this tables and show theme in the UI 
            * customer_reviews as a chart 
            * most_valuable_customers as a chart 
            * monthly_sales as a chart 
            * top_selling_products as a chart 
        """
        subprocess.run(["streamlit", "run", "app/app.py"])




import click

@click.command()
@click.option("--username", prompt="Enter username", help="The username of the user.")
@click.option("--password", prompt="Enter password", hide_input=True, help="The password of the user.")
@click.option("--cleanorset", prompt="cleanOrSet: False=(clean) or True=(set)", default=True, type=bool, help="Choose True for setting the database or False for cleaning.")
def cli(username, password, cleanorset):
    review2024 = EcommerceReview(username, password, cleanorset)
    review2024.startTheUI()


def main() -> None:
    colorful_greeting()
    cli()

if __name__ == "__main__":
    main()
