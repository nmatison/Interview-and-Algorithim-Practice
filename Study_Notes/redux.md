# Redux

## The Single Immutable State Tree
+ Initial state is a Javascript Object that contains all the information the app will need.
+ All mutations and changes to the state in Redux are explicit.

## Describing State Changes with Actions
+ The state tree is read only. You cannot modify or write to it. If the state needs to be modified, then an action has to be dispatched.
+ action = pojo that describes the change. The change is the change to that specific data that the action represents
+ # and types of actions depend completely on the app

## Pure and Impure Functions
**Pure Functions**:
+ Functions whose returned value depends solely on the values of their arguments.
+ No side effects such as network or database calls. They just calculate value. They are predictable.
+ Do not modify the values passed to them, and it will always return the same value for the same arguments.

**Impure Functions**:
+ They may call the database or the network, they may have side effects, they may operate on the DOM, and they may override the values that you pass to them.

## The Reducer Function
+ State mutations in your app need to be described as a pure function.
  + This function takes the previous state and the action being dispatched and it returns the next state of the app.
  + It is important that the function that handles the state does not modify the state given to it. Pure function = new object.
+ The **Reducer** takes the previous state of the app and the action being dispatched and returns the next state of the app. It is a pure function.

## Store
+ Holds the current application's state object and dispatches actions
+ When you create the store you need to specify the reducer used that controls the state (root reducer)
+ **Get State** retrieves the current state of the Redux Store
+ **dispatch** dispatches actions to change the state of your application.
+ **subscribe** allows you to register a callback that the redux store will call anytime an action has been dispatched, so that you can update the UI of your application.
+ **replaceReducer(nextReducer)** allows you to replace the reducer. An advanced api.
