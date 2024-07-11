import { Controller } from "@hotwired/stimulus"

// Connects to data-controller="sweetalert"
export default class extends Controller {
  connect() {
    if (this.element.innerText === "Acceptée") {
      Swal.fire({
        title: "Reservation done!",
        text: "",
        icon: "success"
      });
    }
  }
}
