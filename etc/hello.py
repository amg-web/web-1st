def app(environ, start_response):

    data = environ.replace('&', '\n')

    status = '200 OK'
    response_headers = [
        ('Content-type', 'text/plain'),

    ]
    start_response(status, response_headers)
    return data

