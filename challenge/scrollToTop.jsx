import React from "react";
import { withRouter } from "react-router";
import { Route } from 'react-router-dom';


class ScrollToTop extends React.Component {
  componentDidUpdate() {
    window.scrollTo(0, 0);
  }

  renderComponent() {
    console.log(this.props.location);
    return <Route exact path={`${this.props.location.pathname}`} component={} />;
  }

  render() {
    return <div>{this.renderComponent()}</div>;
  }
}

export default withRouter(ScrollToTop);
