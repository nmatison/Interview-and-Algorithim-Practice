## localStorage and sessionStorage
+ sessionStorage is only available for the duration of the browser session (deleted when the window or tab is closed). It does survive page reloads.
+ the data stored in both can easily be read or changed from within the client/browser.
+ Should not be used for storage of sensitive or security-related data

## Cookies
+ Cookies can have a degree of protection applied from security risks like Cross-Site Scripting/Script injection by setting an HTTP only flag which means modern browsers will prevent access to the cookies and values from js.
+ Especially important with auth cookies.
+ All cookies valid for a page are sent from the browser to the server for every request to the same domain.
  + For this reason cookies should not be used to store large amounts of information.
  + Browser may impose limits on the size of information stored in a cookie.


## Client-side vs. Server-side
+ Http is a stateless protocol so web apps have no way of identifying a user from previous visits
+ Session data relies on a cookie token to identify the user for repeat visits.
  + This usually has a sliding expiry time and stored in-process or externally in a state server or database.
  + Best to store server side
  + Down side to server-side data is scalability. Server resources are required for each duration of session##
  + Session data expires after a set amount of time since the server doesnt know when the user has left the site.


## Cross-site Scripting (XSS) Attack
 ### What is it?
 + Client-side code injection attack
 + Attacker can execute malicious scripts (payload) into a legitimate website or app.
 + Most rampant of web app vulnerabilities
 + Occurs when a we app makes use of unvalidated or unencoded user input
 + allows an attacker to exploit a vulnerability w/in a website by using the website as a vehicle to deliver a malicious script to the victim's browser.
 + Can be taken advantage of w/in VBScript, ActiveX, Flash, and JavaScript. Happens the most in JavaScript. 

 ### How it works?
 + Goal is to inject a payload into a web page a victim visits. 
 + Social Engineering + injected JS payload

 ### What's the worst that can happen?
 + 