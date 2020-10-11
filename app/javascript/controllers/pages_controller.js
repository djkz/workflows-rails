import { Controller } from "stimulus";

export default class extends Controller {
  static targets = ["prev", "next", "page"];

  initialize() {
    this.index = parseInt(this.data.get("index"));
    this.maxPage = parseInt(this.data.get("max"));
    this.showPage();
  }

  next() {
    if (this.index < this.maxPage) this.index++;
    this.showPage();
  }

  previous() {
    if (this.index > 1) this.index--;
    this.showPage();
  }

  showPage() {
    this.data.set("index", this.index);
    this.disableOn(this.prevTarget, 1);
    this.disableOn(this.nextTarget, this.maxPage - 1);
    fetch(window.location.href + `?view=page&page=${this.index}`)
      .then((r) => r.text())
      .then((html) => {
        this.pageTarget.innerHTML = html;
      });
  }

  disableOn(target, number) {
    if (this.index === number) {
      this.disableTarget(target);
    } else {
      this.enableTarget(target);
    }
  }

  disableTarget(target) {
    target.setAttribute("disabled", true);
  }

  enableTarget(target) {
    target.removeAttribute("disabled");
  }
}
