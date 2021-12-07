from flask import Flask

app = Flask(__name__)

#start of hello world app    
@app.route('/')
def hello_world():
    return 'Hello world, my name is Audrey Slater!'

if __name__ == '__main__':
    app.run(debug=True, host='0.0.0.0', port=8080)