import flatpickr from "flatpickr";
import { Spanish } from "flatpickr/dist/l10n/es.js"
import 'flatpickr/dist/themes/material_orange.css';

const initflatpickr = (min, max, timeInterval) => {
  const datepicker = document.querySelector(".datepicker");
  if (datepicker) {
    flatpickr(datepicker, {
      "locale": Spanish,
      altInput: true,
      dateFormat: "Y-m-d H:i",
      time_24hr: true,
      minTime: min,
      maxTime: max,
      minDate: new Date().fp_incr(1),
      maxDate: new Date().fp_incr(30),
      disable: [rmydays],
      minuteIncrement: timeInterval,
  });
  }
};

function rmydays(date) {
  return (date.getDay() === 1);
}

export { initflatpickr };