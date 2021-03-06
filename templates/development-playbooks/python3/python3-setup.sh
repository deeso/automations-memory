BASE_DIR=
PROJECT_NAME=
PROJECT_DIR=$BASE_DIR/$PROJECT_NAME
PROJECT_URI=
PYTHON_VENV=$BASE_DIR/$PROJECT_NAME/venv

git clone $PROJECT_URI $PROJECT_DIR
cd $PROJECT_DIR
python3 -m venv $PYTHON_VENV  
source $PYTHON_VENV/bin/activate

python3 setup.py install 
