// Visit The Stimulus Handbook for more details
// https://stimulusjs.org/handbook/introduction
//
// This example controller works with specially annotated HTML like:
//
// <form data-controller="submit">
//   <submit data-target="submit.button">
// </form>

import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["example"];

  connect() {
    console.log("connected");
  }

  greet() {
    //const element = this.exampleTarget;
    //const name = element.value;
    //this.outputTarget.textContent = `Hello, ${name}!`;
  }
}
