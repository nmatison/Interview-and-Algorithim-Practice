# REST
### What is rest?
+ Stands for Representational State Transfer
+ Roy T. Fielding coined the term in 2000 in Architectural Styles and the Design of Network-based Software Architectures
+ A generic set of principles not specific to the Web.
+ Not considered a protocol since it does not prescribe implementation details.
### The Fielding Constraints
Client-server:
+ The network must be made up of clients and servers
+ Client is a computer that sends HTTP requests to a server in order to access server resources
+ REST requires one-to-one communication as opposed to event-based integration which is where each component continuously broadcasts events while listening for events fro other components.

Stateless:
+ Clients and servers do not need to keep track of each other's state.
+ Server does not know client exists until the client interacts with the server.
+ Server does not keep a record of past requests.

Uniform interface:
+ Constraint that ensures there is a common language between servers and clients that allows each part to be swapped or modified without breaking entire system.
+ 4 sub constraints:
  + Identification of resources
  + Manipulation of resources through representations
  + Self-descriptive messages
  + Hypermedia

+ Identification of Resources
  + Resource refers to anything including: an HTML document, an image, information about a particular user, etc.
  + Each resource must be uniquely identified by a stable identifier
    + This means it does not change across interactions or when a state of the resource changes.
    + If a resource moves to new identifier, the server should send the client a bad for a bad request and give a link to the new location of the resource.
  