import React from "react";
import { withRouter } from "react-router";
import { Route } from 'react-router-dom';


class ScrollToTop extends React.Component {
  componentDidUpdate() {
    window.scrollTo(0, 0);
  }

  renderComponent() {
    console.log(this.props.children);
    let childComponent = this.findChild(this.props.location.pathname)
    // console.log(childComponent);
    return <Route exact path={`${this.props.location.pathname}`} component={childComponent} />;
  }

  findChild(location) {
    let children = this.props.children;
    for (let i = 0; i < children.length; i++) {
      let childLocation = children[i].props.path;
      let childComponent = children[i].props.component;
      if (location == childLocation) return childComponent;
    }
  }

  render() {
    return <div>{this.renderComponent()}</div>;
  }
}

export default withRouter(ScrollToTop);
