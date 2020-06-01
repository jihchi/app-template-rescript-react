open Jest;
open Expect;
open ReactTestingLibrary;

test("renders learn react link", () => {
  render(<App />)
  |> getByText(~matcher=`Str("Learn React"), ~options=?None)
  |> expect
  |> toMatchSnapshot
});
