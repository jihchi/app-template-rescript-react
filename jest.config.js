// FIXME: this is a work-around to avoid the import syntax errors like this:
//
//  SyntaxError: Unexpected token *
//
//    3 | import * as React from "react";
//    4 | import * as LogoSvg from "./logo.svg";
//  > 5 | import * as ReasonReactRouter from "reason-react/src/ReasonReactRouter.js";
//      | ^
//    6 |
//
// In such case, you have to manually add the dependency to following list:
const bsAllDependencies = [
  'bs-platform',
  'reason-react',
  '@glennsl/bs-jest',
  'bs-react-testing-library',
  'bs-dom-testing-library',
];

module.exports = {
  ...{
    ...require('@snowpack/app-scripts-react/jest.config.js')(),
    transformIgnorePatterns: [
      `/node_modules/(?!${bsAllDependencies.join('|')}).+\\.js$`,
    ],
  },
};
