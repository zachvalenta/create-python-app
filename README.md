[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)
[![security: bandit](https://img.shields.io/badge/security-bandit-yellow.svg)](https://github.com/PyCQA/bandit)

# what is this?

🌱️ seed your Python repo w/ security, auto formatting, an enhanced REPL, and more.

# how to use?

* clone the repo (`git clone git@github.com:zachvalenta/create-python-app.git`)
* remove the `.git` directory and initialize your own (`git init`)
* make the first commit in your new repo!

# tooling

* __auto formatting__: [Black](https://github.com/ambv/black)
* __docs__: [pdoc](https://github.com/pdoc3/pdoc)
* __env var__: [python-dotenv](https://github.com/theskumar/python-dotenv)
* __logging__: [loguru](https://github.com/Delgan/loguru)
* __REPL__: [bpython](https://github.com/bpython/bpython)
* __security__: [bandit](https://github.com/openstack/bandit)
* __testing__
    - __runner__: [pytest](https://github.com/pytest-dev/pytest)
    - __coverage__: [coverage](https://github.com/nedbat/coveragepy)
    - __progress bar__: [pytest-sugar](https://github.com/Frozenball/pytest-sugar)

# commands

run `make help` to see all the cool stuff you get for free!

```sh
(venv) $ make help

🐛 DEBUG

repl:    	debug using bpython

📊 CODE QUALITY

cov:     	view HTML coverage report in browser
fmt:     	auto format code using Black
lint:    	lint using flake8
secure:  	security check using Bandit
test:    	run unit tests, view basic coverage report in terminal

📦 DEPENDENCIES

freeze:   	freeze dependencies into requirements.txt
install:   	install dependencies from requirements.txt
reset:   	remove any installed pkg *not* in requirements.txt
```
