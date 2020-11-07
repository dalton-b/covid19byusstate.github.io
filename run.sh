#!/bin/bash
# git clone https://github.com/dalton-b/covid19bystateusa.git
# cd covid19bystateusa
# python3 -m venv ./env
# source ./env/bin/activate
# pip3 install -e .
# covid_update
# # cd covid19bystateusa
# git add .
# git commit -m "test_01"
# git remote set-url origin git@github.com:dalton-b/covid19bystateusa.git
# GIT_SSH_COMMAND='ssh -i' ${{secrets.SECRET_KEY}} git push
echo "Starting run.sh..."
echo "Creating virtual environment..."
python3 -m venv ./env
echo "Activating environment..."
source ./env/bin/activate
echo "Installing packages..."
pip3 install -e .
echo "Running the project..."
covid_update
echo "Staging changes..."
git add .
echo "Committing changes..."
git commit -m "test_01"
echo "Setting origin..."
git remote set-url origin git@github.com:dalton-b/covid19bystateusa.git
echo "Pushing changes..."
GIT_SSH_COMMAND='ssh -i' ${{secrets.SECRET_KEY}} git push
echo "Done!"
