# React
### Life Cycle
+ componentWillMount
  + The only real thing that can be done in this part of the life cycle is to connect to external API's.
  + Even then is that this should be done on the highest level component of the app, so most of the app will not use this part of the life cycle.
  + Can call setState, but it is much better to just use the default state instead.

+ componentDidMount
  + Component has just now mounted
  + This is a good time to draw on a canvas element that was rendered in componentWillMount.
  + This is the time to make any calls to your backend routes to get information and set up your state.
  + This is also the time to add any event listeners
  + Can call setState
