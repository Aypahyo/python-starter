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
