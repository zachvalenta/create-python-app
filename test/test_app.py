from src.app import my_function


def test_my_function():
	assert my_function() == 'something'
