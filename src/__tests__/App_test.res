open ReactTestingLibrary

@val
external it: (string, @uncurry (unit => unit)) => unit = "it"

@module("@testing-library/react") external getNodeText: Dom.element => string = "getNodeText"

type assertions

@module("chai") external chaiAssert: assertions = "assert"

@send external equal: (assertions, 'a, 'a) => unit = "equal"

it("renders learn react link", () => {
  chaiAssert->equal(
    render(<App />) |> getByText(~matcher=#Str("Learn React"), ~options=?None) |> getNodeText,
    "Learn React",
  )
})
