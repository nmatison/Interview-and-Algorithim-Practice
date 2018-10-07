# Javascript

## Prototype
  + When new object is created the object's prototype is set to newObject.prototype.
  + The new operator sets it to the new object.
  ```
  let animal = {
  eats: true
};

function Rabbit(name) {
  this.name = name;
}

Rabbit.prototype = animal;

let rabbit = new Rabbit("White Rabbit"); //  rabbit.__proto__ == animal

alert( rabbit.eats ); // true
```
+ default prototype is an object with the only property `constructor` that points back to the function itself.
+ js does not ensure the right `constructor` value. If you replace the default prototype as a whole then there will be no constructor in it.
+ It would be much better to add/remove properties to the default prototype. or to recreate the constructor entirely.

```
function Rabbit() {}
Rabbit.prototype = {
  jumps: true
};

let rabbit = new Rabbit();
alert(rabbit.constructor === Rabbit); // false
```
versus

```
function Rabbit() {}

// Not overwrite Rabbit.prototype totally
// just add to it
Rabbit.prototype.jumps = true
// the default Rabbit.prototype.constructor is preserved
```

or 

```
Rabbit.prototype = {
  jumps: true,
  constructor: Rabbit
};

// now constructor is also correct, because we added it
```

### Closure
+ A closure is the combination of a function and the lexical environment from which it was declared.
+ Allows a function to access variables from an enclosing scope
+ Allow for data encapsulation
  + The idea that some data should not be directly exposed

  ```javascript
  function SpringfieldSchool() {
    let staff = ['Seymour Skinner', 'Edna Krabappel'];
    return {
    getStaff: function() { console.log(staff) },
    addStaff: function(name) { staff.push(name) }
  }}

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

```javascript
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