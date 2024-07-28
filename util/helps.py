import time
from termcolor import colored
from datetime import datetime
from tqdm import tqdm

def AuthenticationNeeded(func):
    """
    Decorator that checks if a user is authenticated before allowing access to the wrapped function.
    
    Args:
        func (callable): The function to be wrapped by the decorator.
        
    Returns:
        callable: The wrapped function with authentication check.
    """
    def wrapper(*args, **kwargs):
        """
        Wrapper function that performs the authentication check.
        
        Args:
            *args: Positional arguments for the wrapped function.
            **kwargs: Keyword arguments for the wrapped function.
            
        Returns:
            str or any: A message indicating authentication is needed if the user is not authenticated,
            otherwise the result of the wrapped function.
        """
        if not is_authenticated():
            return "Authentication needed. Please log in."
        return func(*args, **kwargs)
    
    return wrapper

def is_authenticated():
    """
    Mock function to check if a user is authenticated.
    
    Returns:
        bool: True if user is authenticated, False otherwise.
    """
    # Implement your authentication logic here
    return True  # Placeholder implementation

@AuthenticationNeeded
def some_protected_function():
    """
    Example function that requires authentication to access.
    
    Returns:
        str: A message indicating the function was accessed.
    """
    return "You have accessed a protected function."





def colorful_greeting():
    date_today = datetime.now().strftime('%Y-%m-%d')
    author = 'Osama Zaid'
    
    ascii_art = f"""
    ____  ______ _____ _______ _______ _______ 
    |  _ \|  ____|  __ \__   __|__   __|__   __|
    | |_) | |__   | |__) | | |     | |     | |   
    |  _ <|  __|  |  _  /  | |     | |     | |   
    | |_) | |____ | | \ \  | |     | |     | |   
    |____/|______||_|  \_\ |_|     |_|     |_|   
    
                                                                                                        
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