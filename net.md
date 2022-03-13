# network
Normally, your browser is a client. After you type a URL, it takes the host part of the URL and sends it to a Domain Name Server (DNS) in order to get the IP address of the host. Then it connects to the IP address and asks to setup a TCP connection. The browser sends HTTP requests through the connection. The server handles them and replies with HTTP responses containing the content that make up the web page. Finally, the browser renders the body of the web page and disconnects from the server

Web's working principles:
    * client uses TCP/IP protocol to connect to server
    * client sends HTTP request packages to server
    * server returns HTTP response packages to client. if the requested recourses include dy namic scripts, server calls engine first
    * client disconnects from server, starts rendering HTML
This is a simple work flow of HTTP affairs -notice that the server closes its connections after it sends data to the clients, then waits for the next request.

URL is Uniform Resource Locator. It's for describing resources on the internet and its basic form is as follows:
    * scheme://host[:port#]/path/.../[?query-string][#anchor]

    * scheme         assign underlying protocol (such as HTTP, HTTPS, FTP)
    * host           IP or domain name of HTTP server
    * port#          default port is 80, and it can be omitted in this case. If you want to use other ports, you must specify which port. For example, http://www.cnblogs.com:8080/
    * path           resources path
    * query-string   data are sent to server
    * anchor         anchor

HTTP is the protocol that is used to facilitate communication between browser and web server. It is based on the TCP protocol and usually uses port 80 on the side of the web server. It is a protocol that utilizes the request-response model -clients send requests and servers respond. According to the HTTP protocol, clients always setup new connections and send HTTP requests to servers. Servers are not able to connect to clients proactively, or establish callback connections. The connection between a client and a server can be closed by either side. For example, you can cancel your download request and HTTP connection and your browser will disconnect from the server before you finish downloading.

Request:
    GET /domains/example/ HTTP/1.1      // request line: request method, URL, protocol and its version
    Host：www.iana.org             // domain name
    User-Agent：Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.4 (KHTML, like Gecko) Chrome/22.0.1229.94 Safari/537.4            // browser information
    Accept：text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8    // mime that clients can accept
    Accept-Encoding：gzip,deflate,sdch     // stream compression
    Accept-Charset：UTF-8,*;q=0.5      // character set in client side
    // blank line
    // body, request resource arguments (for example, arguments in POST)

Response:
    HTTP/1.1 200 OK                     // status line
    Server: nginx/1.0.8                 // web server software and its version in the server machine
    Date:Date: Tue, 30 Oct 2012 04:14:25 GMT        // responded time
    Content-Type: text/html             // responded data type
    Transfer-Encoding: chunked          // it means data were sent in fragments
    Connection: keep-alive              // keep connection
    Content-Length: 90                  // length of body
    // blank line
    <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"... // message body

The status code informs the client of the status of HTTP server's response:
    - 1xx Informational
    - 2xx Success
    - 3xx Redirection
    - 4xx Client Error
    - 5xx Server Error

Concepts in web principles:
    Request: request data from users, including POST, GET, Cookie and URL.
    Response: response data from server to clients.
    Conn: connections between clients and servers.
    Handler: Request handling logic and response generation.

One of the most important principles in web development is that you cannot trust anything from client side user forms. You have to validate all incoming data before using it. Many websites are affected by this problem, which is simple yet crucial.
