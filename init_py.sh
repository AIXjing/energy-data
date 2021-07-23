#!/bin/bash
set -e

PYTHON_ENV_NAME=venv

pip3 install virtualenv

virtualenv -p python3 $PYTHON_ENV_NAME

echo "source $(pwd)/$PYTHON_ENV_NAME/bin/activate" > .env

source $(pwd)/$PYTHON_ENV_NAME/bin/activate # activate the local python environment

pip3 install jupyter
pip3 install matplotlib
pip3 install pandas
pip3 install scipy
pip3 install seaborn
pip3 install graphviz
# pip3 install scikit-learn

echo -e "\n"
echo "Please run \"$ source $PYTHON_ENV_NAME/bin/activate\" to switch to the python environment."
echo "Use \"$ deactivate\" anytime to deactivate the local python environment if you want to switch back to your default python."
echo "Or install autoenv as described on project readme file to make your life much easier."

