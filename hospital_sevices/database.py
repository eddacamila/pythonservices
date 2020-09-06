from sqlalchemy import create_engine #importando para crear la conexión de BD
from sqlalchemy.ext.declarative import declarative_base 
from sqlalchemy.orm import sessionmaker #abre sesión de BD

USER = 'root'
PASSWORD = '123456'
DB_NAME = 'bd_hosp'

# SQLALCHEMY_DATABASE_URL = "sqlite:///./sql_app.db"
# SQLALCHEMY_DATABASE_URL = "postgresql://user:password@postgresserver/db"
SQLALCHEMY_DATABASE_URL = "mysql+pymysql://{}:{}@localhost/{}".format(USER, PASSWORD, DB_NAME) #Se arma la url para la bd


engine = create_engine(SQLALCHEMY_DATABASE_URL)
SessionLocal = sessionmaker(autocommit=False, autoflush=False, bind=engine)

Base = declarative_base()