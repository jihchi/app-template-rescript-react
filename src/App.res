@module("./logo.svg") external logo: string = "default"

%%raw(`import './App.css';`)

@react.component
let make = () => {
  let (count, setCount) = React.useState(() => 0.)

  React.useEffect0(() => {
    let intervalId = Js.Global.setInterval(() => setCount(count => count +. 1.), 100)

    Some(() => Js.Global.clearInterval(intervalId))
  })

  <div className="App">
    <header className="App-header">
      <img src=logo className="App-logo" alt="logo" />
      <p>
        {React.string("Edit ")}
        <code> {React.string("src/App.jsx")} </code>
        {React.string(" and save to reload.")}
      </p>
      <p>
        {React.string("Page has been open for ")}
        <code> {React.string(Printf.sprintf("%.1f", count /. 10.))} </code>
        {React.string(" seconds")}
      </p>
      <a className="App-link" href="https://reactjs.org" target="_blank" rel="noopener noreferrer">
        {React.string("Learn React")}
      </a>
    </header>
  </div>
}
