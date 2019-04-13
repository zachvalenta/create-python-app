[![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)](https://GitHub.com/Naereen/StrapDown.js/graphs/commit-activity)
[![MIT license](https://img.shields.io/badge/License-MIT-blue.svg)](https://lbesson.mit-license.org/)
[![Code style: black](https://img.shields.io/badge/code%20style-black-000000.svg)](https://github.com/ambv/black)
[![security: bandit](https://img.shields.io/badge/security-bandit-yellow.svg)](https://github.com/PyCQA/bandit)

# what is this?

🌱️ seed your Python repo w/ security, auto formatting, an enhanced REPL, and more...

# how to use?

* clone the repo
* remove the `.git` directory and initialize your own Git repo w/ `git init`
* make the first commit in your new repo!

# tooling

* __auto formatting__: [Black](https://github.com/ambv/black)
* __security scan__: [bandit](https://github.com/openstack/bandit)
* __enhanced REPL__: [bpython](https://github.com/bpython/bpython)
* __env var__: [python-dotenv](https://github.com/theskumar/python-dotenv)
* __logging__: [loguru](https://github.com/Delgan/loguru)
* __testing__
    - __runner__: [pytest](https://github.com/pytest-dev/pytest)
    - __coverage__: [coverage](https://github.com/nedbat/coveragepy)
    - __progress bar__: [pytest-sugar](https://github.com/Frozenball/pytest-sugar)

# commands

use the tools via the `Makefile`

run `make help` to see available commands

```sh
$ make help

🐛 DEBUG

repl:    debug using bpython

📊 CODE QUALITY

cov:     view HTML coverage report in browser
fmt:     auto format code using Black
lint:    lint using flake8
secure:  security check using bandit
test:    run unit tests, view basic coverage report in terminal

📦 DEPENDENCIES

pipfr:   freeze dependencies into requirements.txt
pipin:   install dependencies from requirements.txt
piprs:   remove any installed pkg *not* in requirements.txt
```
