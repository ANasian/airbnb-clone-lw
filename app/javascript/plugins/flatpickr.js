import flatpickr from "flatpickr";
import "flatpickr/dist/flatpickr.min.css";
import "flatpickr/dist/themes/airbnb.css";
import rangePlugin from "flatpickr/dist/plugins/rangePlugin";


const initFlatpickr = () => {
  const checkInInput = document.getElementById('booking_check_in');
  const checkOutInput = document.getElementById('booking_check_out');

  if (checkInInput) {
    const unavailableDates = JSON.parse(document.getElementById('form-booking-dates').dataset.unavailable);
    checkOutInput.disabled = true;

    flatpickr(checkInInput, {
      minDate: "today",
      disable: unavailableDates,
      dateFormat: "Y-m-d",
      altInput: true,
      plugins: [new rangePlugin({ input: checkOutInput })]
    });

    checkInInput.addEventListener("change", (event) => {
      if (checkInInput != "") {
        checkOutInput.disabled = false;
      }
      var minCheckOut = new Date(event.target.value);
      minCheckOut.setDate(minCheckOut.getDate() + 1);

      flatpickr(checkOutInput, {
        minDate: minCheckOut,
        disable: unavailableDates,
        dateFormat: "Y-m-d",
        altInput: true,
      });
    });
  };
}

export { initFlatpickr };
