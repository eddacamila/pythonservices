from sqlalchemy import Boolean, Column, ForeignKey, Integer, String
from sqlalchemy.orm import relationship

from .database import Base


class Localidad(Base):
    __tablename__ = "localidades"

    idlocalidad = Column(Integer, primary_key=True, index=True)
    nomloc = Column(String(255), unique=True, index=True)
    
    hospitales = relationship("Hospital", back_populates="owner")


class Hospital(Base):
    __tablename__ = "hospitales"

    idHospital = Column(Integer, primary_key=True, index=True)
    nombre = Column(String(255), index=True)
    tel = Column(String(255), index=True)
    direccion = Column(String(255), index=True)
    localidades_idlocalidad = Column(Integer, ForeignKey("localidades.idlocalidad"))

    owner = relationship("Localidad", back_populates="hospitales")