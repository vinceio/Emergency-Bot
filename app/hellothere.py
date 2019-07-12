#http://flask.pocoo.org/docs/1.0/quickstart/
from flask import Flask
import sys
import argparse
import time

#This is an example app. 
app = Flask(__name__)

start = int (round(time.time()))

@app.route("/")
def hello_world():
    return "Hello There!"

if __name__ == '__main__':
    parser = argparse.ArgumentParser(description="python hellothere.py -p -d")
    parser.add_argument('-p', '--port', action='store', dest='port', help='The port to listen on.')
    parser.add_argument('-d', '--debug', action='store', dest='debug', help='Set debug mode (True or False).')
    args = parser.parse_args()
    if args.port == None:
        print("Missing argument: -p/--port")
        sys.exit(1)
    print(args.debug)
    if args.debug == None:
        print("Missing argument: -d/--debug")
        sys.exit(1)
    app.run(host='0.0.0.0', port=int(args.port), debug=bool(args.debug))
    