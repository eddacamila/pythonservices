from sqlalchemy.orm import Session

from . import models, schemas


def get_localidad(db: Session, localidad_id: int):
    return db.query(models.Localidad).filter(models.Localidad.idlocalidad == localidad_id).first()


def get_localidad_by_nombre(db: Session, nombre: str):
    return db.query(models.Localidad).filter(models.Localidad.nomloc == nombre).first()
    


def get_localidades(db: Session, skip: int = 0, limit: int = 100):
    return db.query(models.Localidad).offset(skip).limit(limit).all()


def create_localidad(db: Session, localidad: schemas.LocalidadCreate):
    db_localidad = models.Localidad(nomloc=localidad.nomloc)
    db.add(db_localidad)
    db.commit()
    db.refresh(db_localidad)
    return db_localidad


def get_hospitales(db: Session, skip: int = 0, limit: int = 100):
    return db.query(models.Hospital).offset(skip).limit(limit).all()

def get_hospitales_by_localidad(db: Session, localidad_id, skip: int = 0, limit: int = 100):
    return db.query(models.Hospital).filter(models.Hospital.Localidades_idlocalidad == localidad_id).offset(skip).limit(limit).all()


def create_localidad_hospital(db: Session, hospital: schemas.HospitalCreate, localidad_id: int):
    db_hospital = models.Hospital(**hospital.dict(), Localidades_idlocalidad=localidad_id)
    db.add(db_hospital)
    db.commit()
    db.refresh(db_hospital)
    return db_hospital