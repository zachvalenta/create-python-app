from src.app import demo_function


def test_my_function():
	assert demo_function() == 'something'
