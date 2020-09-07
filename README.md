# Recordando qué es SOA
El código de la función es INDEPENDIENTE de la forma en que se resuelve la integración.
La función puede estar hecha en cualquier lenguaje de programación y residir en cualquier tipo de plataforma
tecnológica.
Una arquitectura SOA está formada por tres partes: un proveedor, un intermediario y un cliente que no presentan NINGUN ACOPLAMIENTO entre ellos. 
# sevices for hospitals and localities

## First install all required libraries

Tenga presente que se debe trabajar con Python 3. Tenga presente con linux y windows las rutas cambian \ en windows es / en linux 

```bash
pip install -r requirements.txt
```

## create database

Tenga presente que debe cambiar el nombre de  usuario de la contraseña de la bd antes de ejecutarlo.

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


