[@bs.module "./logo.svg"] external logo: string = "default";

%raw
{|import './App.css';|};

[@react.component]
let make = () => {
  <div className="App">
    <header className="App-header">
      <img src=logo className="App-logo" alt="logo" />
      <p>
        {React.string("Edit ")}
        <code> {React.string("src/App.jsx")} </code>
        {React.string(" and save to reload.")}
      </p>
      <a
        className="App-link"
        href="https://reactjs.org"
        target="_blank"
        rel="noopener noreferrer">
        {React.string("Learn React")}
      </a>
    </header>
  </div>;
};
