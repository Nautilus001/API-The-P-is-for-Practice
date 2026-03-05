# app.py
from flask import Flask, request, jsonify

app = Flask(__name__)

@app.route('/files')
def get_files():
    return {
        "name": "Root",
        "type": "folder",
        "children": [
            {
                "name": "Documents",
                "type": "folder",
                "children": [
                    {"name": "resume.jpg", "type": "image", "size": 1024},
                    {"name": "budget.txt", "type": "text", "size": 250}
                ]
            },
            {
                "name": "System",
                "type": "folder",
                "children": []
            },
            {"name": "config.txt", "type": "text", "size": 2}
        ]
    }