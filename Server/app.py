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
                    {"name": "resume.pdf", "type": "file", "size_kb": 1024},
                    {"name": "budget.xlsx", "type": "file", "size_kb": 250}
                ]
            },
            {
                "name": "System",
                "type": "folder",
                "children": []
            },
            {"name": "config.json", "type": "file", "size_kb": 2}
        ]
    }