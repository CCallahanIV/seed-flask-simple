from flask import Flask, jsonify

app = Flask(__name__)

@app.route('/')
def healthcheck():
    return jsonify({"data": "OK"}), 200
