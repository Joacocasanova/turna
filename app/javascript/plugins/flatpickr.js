import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/material_orange.css';

const initflatpickr = (min, max, timeInterval) => {
  const datepicker = document.querySelector(".datepicker");
  if (datepicker) {
    flatpickr(datepicker, {
      altInput: true,
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      time_24hr: true,
      minTime: min,
      maxTime: max,
      minDate: "today",
      maxDate: new Date().fp_incr(30),
      disable: [rmydays],
      minuteIncrement: timeInterval,
      locale: {
        firstDayOfWeek: 1
      }
  });
  }
};

function rmydays(date) {
  return (date.getDay() === 1);
}

export { initflatpickr };