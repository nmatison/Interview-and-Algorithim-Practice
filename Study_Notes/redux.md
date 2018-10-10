# Redux

## The Sing Immutable State Tree
+ Initial state is a Javascript Object that contains all the information the app will need.
+ All mutations and changes to the state in Redux are explicit.

## Describing State Changes with Actions
+ The state tree is read only. You cannot modify or write to it. If the state needs to be modified, then an action has to be dispatched.
+ action = pojo that describes the change. The change is the change to that specific data that the action represents
+