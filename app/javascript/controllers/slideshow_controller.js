import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["slide"];

  initialize() {
    const index = parseInt(this.data.get('index'));
    this.showSlide(index);
  }

  next() {
    this.showSlide(Math.min(this.index + 1, this.slideTargets.length - 1));
  }

  previous() {
    this.showSlide(Math.max(this.index - 1, 0));
  }

  showSlide(index) {
    this.index = index;
    this.slideTargets.forEach((el, i) => {
      el.classList.toggle("slide--current", index == i);
    });
  }
}