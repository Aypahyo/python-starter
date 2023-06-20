# python starter

## Description

This is a starter project for python projects.
It includes a basic project structure as a starting point.

This starter is ready to be pip installed.

## Features

### unittest

Unittests are included in the `tests` folder, all files ending in `_unit_.py` are automatically discovered by the test runner.

```bash
python3 -m unittest discover -s tests -p *_unit.py
```

### component tests

Component tests are included in the `tests` folder, all files ending in `_component_.py` are automatically discovered by the test runner.

```bash
python3 -m unittest discover -s tests -p *_component.py
```

### behave tests

Behave tests are included in the `features` folder, all files ending in `.feature` are automatically discovered by the test runner.

```bash
python3 -m behave
```

### run all tests

There is a script to run all tests.
Exit code is 0 if all tests pass, 1 otherwise.

```bash
src/run_all_tests.sh
```

### run all tests in docker

There is a script to run all tests in docker.
This also tests installation of the package.
Exit code is 0 if all tests pass, 1 otherwise.

```bash
src/run_docker_all_tests.sh
```
