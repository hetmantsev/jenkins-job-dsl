#!/bin/bash
set -e

virtualenv bokchoy_db_update -q
source bokchoy_db_update/bin/activate

cd testeng-ci
pip install -r requirements.txt
cd jenkins
python bokchoy-db-pull-request.py --sha $GIT_COMMIT --repo_root "../../edx-platform"
