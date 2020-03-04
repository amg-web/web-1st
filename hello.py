def app(environ, start_response):
    status = '200 OK'
    headers = [('Content-Type', 'text/plain')]
    body = environ['QUERY_STRING'].split('&')
    body = [item + "\r\n" for item in body]
    print(body)
    body = bytes(body, encoding='utf-8')
    print(body)
    start_response(status, headers)
    return body

