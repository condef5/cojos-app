import { Controller } from "@hotwired/stimulus";

export default class extends Controller {
  connect() {
    this.element.textContent = "Super app for the Tingo María cojos friends";
  }
}
