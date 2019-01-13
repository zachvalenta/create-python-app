import unittest
from src.app import my_function


class TestApp(unittest.TestCase):
    def test_myfunction(self):
        self.assertEqual(my_function(), 'something')
