open TestBindings.Mocha
open TestBindings.Chai
open TestBindings.ReactTestingLibrary

it("renders learn React and ReScript link", () => {
  let _ = render(<App />)
  screen->getByText("Learn React")->isOk
  screen->getByText("Learn ReScript")->isOk
})
