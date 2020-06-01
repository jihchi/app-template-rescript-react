%raw
{| import './index.css' |};

ReactDOMRe.renderToElementWithId(<App />, "root");

// Hot Module Replacement (HMR) - Remove this snippet to remove HMR.
// Learn more: https://www.snowpack.dev/#hot-module-replacement
[@bs.scope ("import", "meta")] [@bs.val] external hot: bool = "hot";

[@bs.scope ("import", "meta", "hot")] [@bs.val]
external accept: unit => unit = "accept";

if (hot) {
  accept();
};
