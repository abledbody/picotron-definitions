--- @meta

--- @class socket
--- @field addr string
--- @method read
--- @method write
--- @method close
--- @method status
--- @method accept
sock = {}

--- @alias status_strings "ready" | "listening" | "closed" | "closed by peer" | "disconnected"

--- Create a socket
--- addr is a string consisting of the protocol (tcp:// or udp://),
--- the ip address, followed by a port number ":1234".
--- ipv6 addresses should be enclosed in square brackets
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#socket)
--- @param addr string
--- @return socket
function socket(addr) end

--- Read a string from a socket.
--- This function is not blocking; 
--- it will return nothing when there is no data available on the socket
--- Returns the number of bytes written, or nil followed by an error message string.
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#sock_read)
--- @class socket
--- @return number | nil, string
function sock:read() end

--- Write a string to a socket.
--- Returns the number of bytes written, or nil followed by an error message string.
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#sock_write)
--- @param str string
--- @return number | nil, string
function sock:write(str) end

--- Close the connection if there is one
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#sock_close)
--- @return nil
function sock:close() end

--- Get the current status of the socket.
--- "ready" means the socket that is ready to read/write to a given address
--- "listening" means the socket was created with a wildcard address and ready to :accept() connections
--- "closed" means :close() was called on the socket
--- "closed by peer" means that the peer closed the connection (happens after attempt to :read)
--- "disconnected" means the socket was closed for some other reason
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#sock_status)
--- @return status_strings
function sock:status() end

--- This can be used with sockets that are listening to all traffic on a given port.
--- When a new connection is made with tcp, or a UDP message is receieved from a new 
--- address+port, :accept() will return a new socket that can be used to communicate 
--- with that particular client, or nil if none found.
--- [View Online](https://www.lexaloffle.com/dl/docs/picotron_manual.html#sock_accept)
--- @return socket | nil
function sock:accept() end