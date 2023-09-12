from app import db
from models.folder import Folder
from models.note import Note

class ServiceNotes():

    def getNotes():
        try:
            json_events = []
            events = Note.query.all()
            for event in events:

                form = {
                    "id" : event.__dict__['id'],
                    "title" : event.__dict__['title'],
                    "description" : event.__dict__['description'],
                    "id_folder" : event.__dict__['id_folder'],
                }

                json_events.append(form)

            return json_events
        except:
            return 500

    def addFolder(title):
        folder = Folder(
            title=title
        )
        db.session.add(folder)
        db.session.commit()

    def deleteFolder(id):
        folder = Folder.query.filter_by(id=id).first()
        db.session.delete(folder)
        db.session.commit()

    def addNote(description,title):
        note = Note(
            title=title,
            description=description,
        )

    def deleteNote(id):
        note = Note.query.filter_by(id=id).first()
        db.session.delete(note)
        db.session.commit()