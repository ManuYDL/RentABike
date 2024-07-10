import { Controller } from "@hotwired/stimulus"
import flatpickr from "flatpickr";
// Connects to data-controller="datepicker"
export default class extends Controller {
  connect() {
    flatpickr(this.element, {
      inline: true,
      mode: "range",
      minDate: "today",
      dateFormat: "Y-m-d"
    })
  }
}

// tester le mode range, puis splitter notre chaine de cara grâce à la methode .split ou autre...(A TROUVER)


//const start_date = flatpickr("#start_date", {
////  dateFormat: 'Y-m-d',
////  onChange: function(sel_date, date_str) {
////    end_date.set("minDate", date_str);
////  }
////});
////
////const end_date = flatpickr("#end_date", {
////  dateFormat: 'Y-m-d'
////});
////const start_date = flatpickr("#start_date", {
////  dateFormat: 'Y-m-d',
////  onChange: function(sel_date, date_str) {
////    ending_date.set("minDate", starting_date);
////  }
////});
////
////const end_date = flatpickr("#end_date", {
////  dateFormat: 'Y-m-d'
//});
