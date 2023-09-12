from app import db

class Folder(db.Model):
    __tablename__ = "notes-folders"
    __table_args__ = {"extend_existing": True}

    id = db.Column("id", db.Integer, primary_key=True)
    title = db.Column("title", db.String(100))

    def __init__(self,title):
        self.title = title

        

