# Python Template

Adapted from [python-dev-container-template](https://github.com/JamesHutchison/python-dev-container-template)

## Changing the package name

- In [/pyproject.toml](/pyproject.toml) set the name and packages
    ```toml
        [project]
        name = "python-project" # Update

        # ...

        [tool.poetry]
        packages = [{ include = "python_project", from = "src" }] # Update
    ```
- Rename the package folder under ['/src](/src) to match the package name

## Useful commands

```bash
# run tests
python3 -m pytest

# lint files
ruff check
```
