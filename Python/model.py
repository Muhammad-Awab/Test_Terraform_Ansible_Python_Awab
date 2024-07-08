from main import Base, engine
from sqlalchemy import Column, Integer, String, TIMESTAMP, text
from sqlalchemy.orm import sessionmaker

class Item(Base):
    __tablename__ = "items"

    id = Column(Integer, primary_key=True, index=True)
    name = Column(String, index=True)
    visit_time = Column(TIMESTAMP(timezone=True), nullable=False, server_default=text('now()'))

Base.metadata.create_all(bind=engine)