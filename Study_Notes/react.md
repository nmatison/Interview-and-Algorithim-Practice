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

+ componentWillReceiveProps
  + This will activate before the new props have fully arrived to the component
  + Takes in nextProps
  + This is not called on the initial render of the component
  + Can call setState

+ shouldComponentUpdate
  + Normally, when a component receives props it should update.
  + However, this is called before it does update.
  + Takes in nextProps and nextState
  + This should always return a boolean. The default is true as in yes it should update.
  + If you are worried about wasted renders or anything of the sort then this is the place to control that.
  + Cannot call setState.

+ componentWillUpdate
  + It is basically componentWillReceiveProps but it happens have shouldComponentUpdate.
  + It cannot call setState

+ componentDidUpdate
  + Here you can do the same stuff as componentDidMount. 
  + Most common use case is for updating the DOM in response to prop or state changes.
  + can call setState