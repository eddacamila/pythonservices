# sevices for hospitals and localities

## First install all required libraries

```bash
pip install -r requirements.txt
```

## create database

```bash
python db_creator.py
```

## Modify database parameters for you enviroment in file: [database.py](hospital_sevices\database.py)

```python
USER = 'you user'
PASSWORD = 'your password'
DB_NAME = 'bd_hosp'

SQLALCHEMY_DATABASE_URL = "mysql+pymysql://{}:{}@localhost/{}".format(USER, PASSWORD, DB_NAME)
```

## Now launch server using uvicorn

```bash
uvicorn main:app --reload
```

## and go to [Documentation API]('http://127.0.0.1:8000/docs')
