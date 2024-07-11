import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d"
    })
  }
}

// tester le mode range, puis splitter notre chaine de cara grâce à la methode .split ou autre...(A TROUVER)
// split ici params[:booking][:starting_date]

//  string.split(" to ")[1]
