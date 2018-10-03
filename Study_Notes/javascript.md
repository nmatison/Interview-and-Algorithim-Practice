# Javascript

### Closure
+ A closure is the combination of a function and the lexical environment from which it was declared.
+ Allows a function to access variables from an enclosing scope
+ Allow for data encapsulation
  + The idea that some data should not be directly exposed

  ```
  function SpringfieldSchool() {
  let staff = ['Seymour Skinner', 'Edna Krabappel'];
  return {
    getStaff: function() { console.log(staff) },
    addStaff: function(name) { staff.push(name) }
  }}
```
let elementary = SpringfieldSchool()
console.log(elementary)        // { getStaff: ƒ, addStaff: ƒ }
console.log(staff)             // ReferenceError: staff is not defined
/* Closure allows access to the staff variable */
elementary.getStaff()          // ["Seymour Skinner", "Edna Krabappel"]
elementary.addStaff('Otto Mann')
elementary.getStaff()          // ["Seymour Skinner", "Edna Krabappel", "Otto Mann"]

```

Immediate Invoked Function Expression (IIFE)

  + a function express that is called immediately after you define it.
  + (surrounding parenthesis) prevents from treating it as a function declaration
  + final parenthesis() executes the function expression.

```
var result = [];
for (var i=0; i < 5; i++) {
  result.push( function() { return i } );
}
console.log( result[1]() ); // 5
console.log( result[3]() ); // 5
result = [];
for (var i=0; i < 5; i++) {
  (function () {
    var j = i; // copy current value of i
    result.push( function() { return j } );
  })();
}
console.log( result[1]() ); // 1
console.log( result[3]() ); // 3

```

+ IIFE's enable us to:
  + attach private data to a function
  + create fresh environments
  + avoids polluting the global namespace.