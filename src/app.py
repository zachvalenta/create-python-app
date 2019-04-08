import os

from loguru import logger
from dotenv import find_dotenv, load_dotenv


def demo_function():
    load_dotenv(find_dotenv())
    logger.debug(
        "logged demo_function using 📜 loguru 📜, "
        "loaded env var -- {} -- using 📲 python-dotenv 📲  ".format(os.getenv("FOO_KEY"))
    )
    return "something"
