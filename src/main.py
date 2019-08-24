from flask import Flask
import os
FLASK_PORT_DEV = os.environ.get('FLASK_PORT_DEV')

app = Flask(__name__)


@app.route('/')
def hello_world():
    return {'msg': 'Hello, World'}


if __name__ == '__main__':
    print(FLASK_PORT_DEV)
    app.run(host='0.0.0.0', port=FLASK_PORT_DEV)
