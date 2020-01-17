import os

from loguru import logger
from dotenv import find_dotenv, load_dotenv


def demo_function():
    """sample function to show off `loguru`, `pdoc3`, and `python-dotenv` usage"""
    load_dotenv(find_dotenv())
    logger.debug(
        "logged demo_function using 📜 loguru 📜, "
        "loaded env var -- {} -- using 📲 python-dotenv 📲  ".format(
            os.getenv("FOO_KEY", "abc123")
        )
    )
    return "something"
