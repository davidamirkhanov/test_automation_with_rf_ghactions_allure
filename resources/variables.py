from os import environ
from dotenv import load_dotenv

load_dotenv()

if 'BASE_URL' in environ:
    BASE_URL = environ['BASE_URL']