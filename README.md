[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)
[![security: bandit](https://img.shields.io/badge/security-bandit-yellow.svg)](https://github.com/PyCQA/bandit)

# what is this?

Scaffold for a Python app seeded with security, auto formatting, an enhanced REPL, and more.

__tooling__

* __auto formatting__: [Black](https://github.com/ambv/black)
* __linting__: [flake8](https://gitlab.com/pycqa/flake8)
* __docs__: [pdoc](https://github.com/pdoc3/pdoc)
* __env var__: [python-dotenv](https://github.com/theskumar/python-dotenv)
* __logging__: [loguru](https://github.com/Delgan/loguru)
* __REPL__: [bpython](https://github.com/bpython/bpython)
* __security__: [bandit](https://github.com/openstack/bandit)
* __testing__
    - __runner__: [pytest](https://github.com/pytest-dev/pytest)
    - __coverage__: [coverage](https://github.com/nedbat/coveragepy)
    - __progress bar__: [pytest-sugar](https://github.com/Frozenball/pytest-sugar)

# how to use?

__Git__

```sh
# clone repo
git clone git@github.com:zachvalenta/create-python-app.git

# rm connection to this remote
git remote rm git@github.com:zachvalenta/create-python-app.git

# rm history
rm .git

# restart commit history for your own work
git init
```

__set up environment__

install dependencies
```sh
poetry install
```

set up envionmental variable
```sh
ln -sf .env.dev .env
```

__everything else__

```makefile
🛠  UTILS

repl:       debug using bpython
secure:     security check using Bandit

📊 CODE QUALITY

test:       run unit tests, view basic coverage report in terminal
cov:        view HTML coverage report in browser
lint:       lint using flake8
fmt:        autoformat using black

📦 DEPENDENCIES

env:        show environment info
deps:       list prod dependencies

```
