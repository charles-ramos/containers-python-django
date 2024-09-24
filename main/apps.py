from django.apps import AppConfig
import os

from dotenv import load_dotenv


class MainConfig(AppConfig):
    load_dotenv()
    default_auto_field = 'django.db.models.BigAutoField'
    name = 'main'
    test = os.getenv('TEST')
    print(test)