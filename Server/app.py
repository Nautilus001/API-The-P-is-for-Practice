# app.py
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/files')
def get_files():
    return {
        "name": "Root",
        "file_type": "folder",
        "children": [
            {
                "name": "Documents",
                "file_type": "folder",
                "children": [
                    {"name": "resume.jpg", "file_type": "image", "size": 1024},
                    {"name": "budget.txt", "file_type": "text", "size": 250}
                ]
            },
            {
                "name": "System",
                "file_type": "folder",
                "children": []
            },
            {"name": "config.txt", "file_type": "text", "size": 2}
        ]
    }