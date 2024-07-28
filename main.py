"""
E-commerce Sales Analytics
"""

import click
from util.helps import colorful_greeting



@click.command()
@click.option("--email", prompt="Your email", help="The email address of the user.")
@click.option("--password", prompt="Your password", help="The password of the user.")
def hello(email, password):
 
    click.echo(f"Email: {email}")
    click.echo(f"Password: {password}")



def main() -> None:
    colorful_greeting()
    hello()

if __name__ == "__main__":
    main()
