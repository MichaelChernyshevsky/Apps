from flask import Flask, request, jsonify
from flask_sqlalchemy import SQLAlchemy
from ..app_with_apps.notes.interface.serviceNote import ServiceNotes


from app import app


# Notes
@app.get('/apps/notes/notes')
def getNotes():
    
    pass

@app.put('/apps/notes/createFolder')
def addFolder():
    ServiceNotes.addFolder(
        request.json["title"]
    )
    pass

@app.put('/apps/notes/folder/<int:idFolder>/create')
def addNote(idFolder):
    ServiceNotes.addNote(
        request.json["title"],
        request.json["id_folder"],
        request.json["description"]

    )

    pass

@app.delete('/apps/notes/note/<int:idNote>/delete')
def deleteNote(idNote):
    ServiceNotes.deleteNote(idNote)
    pass

@app.delete('/apps/notes/folder/<int:idFolder>/delete')
def deleteFolder(idFolder):
    ServiceNotes.deleteFolder(idFolder)
    pass