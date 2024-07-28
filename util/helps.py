# Utility functions
import time
from termcolor import colored
from datetime import datetime
from tqdm import tqdm

is_auth = False

def authenticated(usersDict: dict, username: str) -> bool:
    global is_auth
    if username in usersDict:
        is_auth = True
        return is_auth
    return is_auth

def AuthenticationNeeded(func):
    def wrapper(*args, **kwargs):
        if not is_auth:
            print("Authentication needed. Please log in.")
            exit()
        else:
            return func(*args, **kwargs)
    return wrapper

def colorful_greeting():
    date_today = datetime.now().strftime('%Y-%m-%d')
    author = 'Osama Zaid'
    
    ascii_art = f"""
    ____  ______ _____ _______ _______ _______ 
    |  _ \\|  ____|  __ \\__   __|__   __|__   __|
    | |_) | |__   | |__) | | |     | |     | |   
    |  _ <|  __|  |  _  /  | |     | |     | |   
    | |_) | |____ | | \\ \\  | |     | |     | |   
    |____/|______||_|  \\_\\ |_|     |_|     |_|   
    
                                                                                                        
    Reports of Brandx
    Date: {date_today}
    Author: {author}
    """
    print(colored(ascii_art, 'cyan'))

def loading_bar():
    with tqdm(total=100, desc="Processing", bar_format="{l_bar}{bar} [ {n_fmt}/{total_fmt} ]") as pbar:
        for _ in range(10):
            time.sleep(0.1)
            pbar.update(10)
    
    for _ in range(3):
        print("\n")
        break
