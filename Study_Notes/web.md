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


