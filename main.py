from typing import List

from fastapi import Depends, FastAPI, HTTPException
from sqlalchemy.orm import Session

from hospital_sevices import crud, models, schemas


from hospital_sevices.database import SessionLocal, engine

models.Base.metadata.create_all(bind=engine)

app = FastAPI()


# Dependency
def get_db():
    db = SessionLocal()
    try:
        yield db
    finally:
        db.close()


@app.post("/localidades/", response_model=schemas.Localidad)
def create_localidad(localidad: schemas.LocalidadCreate, db: Session = Depends(get_db)):
    db_localidad = crud.get_localidad_by_nombre(db, nombre=localidad.nomloc)
    if db_localidad:
        raise HTTPException(status_code=400, detail="Nombre already registered")
    return crud.create_localidad(db=db, localidad=localidad)


@app.get("/localidades/", response_model=List[schemas.Localidad])
def read_localidades(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    localidades = crud.get_localidades(db, skip=skip, limit=limit)
    return localidades


@app.get("/localidades/{localidad_id}", response_model=schemas.Localidad)
def read_localidad(localidad_id: int, db: Session = Depends(get_db)):
    db_localidad = crud.get_localidad(db, localidad_id=localidad_id)
    if db_localidad is None:
        raise HTTPException(status_code=404, detail="localidad not found")
    return db_localidad


@app.post("/localidades/{localidad_id}/hospitales/", response_model=schemas.Hospital)
def create_hospital_for_localidad(
    localidad_id: int, hospital: schemas.HospitalCreate, db: Session = Depends(get_db)
    ):
    return crud.create_localidad_hospital(db=db, hospital=hospital, localidad_id=localidad_id)


@app.get("/hospitales/", response_model=List[schemas.Hospital])
def read_hospitales(skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    hospitales = crud.get_hospitales(db, skip=skip, limit=limit)
    return hospitales

@app.get("/hospitales/{localidad_id}/")
def read_hospital_by_localidad(localidad_id: int, skip: int = 0, limit: int = 100, db: Session = Depends(get_db)):
    hospitales = crud.get_hospitales_by_localidad(db, localidad_id, skip, limit=limit)
    return hospitales