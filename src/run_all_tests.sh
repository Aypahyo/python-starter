#! /bin/bash
cd $(dirname $0)

echo running unit tests...
python3 -m unittest discover -s tests -p *_unit.py
exit_status_unit=$?
echo running component tests...
python3 -m unittest discover -s tests -p *_component.py
exit_status_component=$?
echo running behave tests...
python3 -m behave
exit_status_behave=$?

# if any eit status is not 0, exit with 1
if [ $exit_status_unit -ne 0 ] || [ $exit_status_component -ne 0 ] || [ $exit_status_behave -ne 0 ]; then
    echo "Tests failed"
    exit 1
fi
echo "Tests passed"
exit 0