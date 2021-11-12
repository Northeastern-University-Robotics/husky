

import tornado.httpserver
import tornado.websocket
import tornado.ioloop
import tornado.web
import socket

import tornado.web
import tornado.ioloop

class basicRequestHandler(tornado.web.RequestHandler):
    def get(self):
        self.write("Hello, world!!!!!!")

class resourceRequestHandler(tornado.web.RequestHandler):
    def get(self, id):
        self.write("Querying tweet with id " + id)

class queryStringRequestHandler(tornado.web.RequestHandler):
    def get(self):
	
        n = int(self.get_argument("n"))
        print("android request number " + str(n)) 
        r = "odd" if n % 2 else "even"
        
        self.write("the number " + str(n) + " is " + r)

class staticRequestHandler(tornado.web.RequestHandler):
    def get(self):
        self.render("index.html")


class WSHandler(tornado.websocket.WebSocketHandler):
    def open(self):
        print( 'new connection')
      
    def on_message(self, message):
        print ('message received:  %s' % message)
        # Reverse Message and send it back
        print ('sending back message: %s' % message[::-1])
        self.write_message(message[::-1])
 
    def on_close(self):
        print ('connection closed')
 
    def check_origin(self, origin):
        return True
 

if __name__ == "__main__":
    app = tornado.web.Application([
        (r'/ws', WSHandler),
        (r"/", basicRequestHandler),
        (r"/blog", staticRequestHandler),
        (r"/isEven", queryStringRequestHandler),
        (r"/tweet/([0-9]+)", resourceRequestHandler)
    ])

    app.listen(1500)
    print("I'm listening on port 1500")
    myIP = socket.gethostbyname(socket.gethostname())
    print ('*** Websocket Server Started at %s***' % myIP)
    tornado.ioloop.IOLoop.instance().start()
 