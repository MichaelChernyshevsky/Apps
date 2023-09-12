from app import db

class Note(db.Model):
    __tablename__ = "notes"
    __table_args__ = {"extend_existing": True}

    id = db.Column("id", db.Integer, primary_key=True)
    title = db.Column("title", db.String(100))
    description = db.Column("description", db.String(100))
    id_folder = db.Column("id_folder", db.Integer, )



    def __init__(self,title,description,id_folder):
        self.description = description
        self.title = title
        self.id_folder = id_folder
        

