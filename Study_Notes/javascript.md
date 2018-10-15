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

## this

  + `this` is used to access an object
    ```javascript
    let user = {
    name: "John",
    age: 30,

    sayHi() {
      alert(this.name);
    }

    };

    user.sayHi(); // John
    ```
  + Could also use `user.name` in the above example; however, that would be unreliable if the user variable was reassigned.

  + this can be used in any function and it is evaluated during the run-time.

  + a call of a function that uses this without an object is not normal, and in `use strict` mode this would be undefined in such a scenario. If `use strict` mode is not on, then this would refer to the global object. Like the window in a browser.

  + Reference type
    + This is a specification type. We can't explicitly use it, but it is used internally by the language. 

    ```javascript
    let user = {
    name: "John",
    hi() { alert(this.name); }
    }

    // split getting and calling the method in two lines
    let hi = user.hi;
    hi(); // Error, because this is undefined
    ```
      
    + Above, hi() throws an error because `hi = user.hi` puts the function into a variable, and then the invocation is completely stand alone so there is no `this`.

    + the `'.'` in `user.hi()` returns a reference type no a function.
    
    + there are three values associated with a reference type:
      1. `base` is the object
      2. `name` is the property
      3. `strict` is true if `use strict` is in effect.

    + in the above example `user.hi()`'s value would be `(user, "hi", true)`

    + The `()` after the reference type receives the full information about the object and its method. I.E. in `user.hi()` the this is set to the reference base (`user`).

  + Note that arrow functions do not have their own `this`, and this may allow an outer function/object's `this` to be passed down.

## Hoisting
  + The behavior of moving `var` and `function` declarations to the top of their respective scopes during compilation.
  + This allows a function to be called before it is defined.
  + Var declarations are hoisted but not its assignments.
  + Variables declared with let and const remain uninitialized at the beginning of execution whilst variables declared with var are initialized with a value of undefined.

## `new` keyword
+ Functions invoked using the `new` keyword are called constructor functions.
+  `new`
  + creates a new object
  + sets the object's prototype to be the prototype of the constructor function
  + executes the constructor function with this as the newly created object.
  + Returns the created object. If the constructor returns an object, this object is returned.

## ES5 vs ES6
+ Block scoping (`let` and `const`)
  + eliminates iife for the most part
  + Babel used for browsers that can only read ES5
+ Lexical `this`
  + this can now always point to the object where it is physically located within with the use of arrow functions
+ Rest parameters, args, and spread
+ Classes
+ Use Strict