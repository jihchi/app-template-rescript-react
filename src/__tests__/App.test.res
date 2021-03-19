type assertions
type result

@module("@testing-library/react") external render: React.element => result = "render"

@module("@testing-library/react") external getNodeText: Dom.element => string = "getNodeText"

@module("@testing-library/react") @val external screen: result = "screen"

@send external getByText: (result, string) => Dom.element = "getByText"

@module("chai") external chaiAssert: assertions = "assert"

@send external equal: (assertions, 'a, 'a) => unit = "equal"

@val external it: (string, @uncurry (unit => unit)) => unit = "it"

it("renders learn react link", () => {
  let _ = render(<App />)
  let actual = screen->getByText("Learn React")->getNodeText
  let expected = "Learn React"
  chaiAssert->equal(actual, expected)
})
