import json
from flask import Flask
app = Flask(__name__)

@app.route("/")
def hello():
    return "Hello World!"
	
@app.route("/info")
def info():
    with open('info.json') as info_json:
        info = json.load(info_json)
        info_json.close()

    return str(info)


if __name__ == "__main__":
    app.run()

