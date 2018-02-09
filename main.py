from bottle import route, run, template, get

@get('/hello/<name>')
def index(name):
    return template('<b>Hello {{name}}</b>!', name=name)

@get('/ping')
def ping():
    return 'pong'

run(host='localhost', port=8080)