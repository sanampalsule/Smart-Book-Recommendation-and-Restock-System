from sqlalchemy.ext.declarative import declarative_base
from sqlalchemy import Column, Integer, String 

Base = declarative_base()

class Employee(Base):
    __tablename__ = 'Employee'  

    EmployeeID = Column(Integer, primary_key=True)
    Fname = Column(String)
    Lname = Column(String)
    Salary =Column(Integer)
    PhoneNo = Column(String)
    Email = Column(String)
    DOB =Column(String)
    JoiningDate =Column(String)
    JobRole = Column(String)
