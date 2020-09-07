from typing import List, Optional

from pydantic import BaseModel


class HospitalBase(BaseModel):
    nombre: str
    tel: str
    direccion: str


class HospitalCreate(HospitalBase):
    pass


class Hospital(HospitalBase):
    idHospital: int
    localidades_idlocalidad: int

    class Config:
        orm_mode = True


class LocalidadBase(BaseModel):
    nomloc: str


class LocalidadCreate(LocalidadBase):
    pass


class Localidad(LocalidadBase):
    idlocalidad: int
    nomloc: str
    #hospital: List[Hospital] = []

    class Config:
        orm_mode = True