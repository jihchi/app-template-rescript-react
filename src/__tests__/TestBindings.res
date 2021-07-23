module ReactTestingLibrary = {
  type renderResult
  @module("@testing-library/react") external render: React.element => renderResult = "render"
  @module("@testing-library/react") @val external screen: renderResult = "screen"
  @send external getByText: (renderResult, string) => Dom.element = "getByText"
}

module Chai = {
  @module("chai") @scope("assert") external isOk: 'a => unit = "isOk"
}

module Mocha = {
  @val external it: (string, @uncurry (unit => unit)) => unit = "it"
}
