from python_project.__main__ import add_five


def test_adds_five():
    result = add_five(3)
    assert result == 8
