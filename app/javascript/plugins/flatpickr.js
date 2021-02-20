import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/material_orange.css';

const initflatpickr = () => {
  const datePickrs = document.querySelectorAll(".datepicker")
  console.log(datePickrs);
  datePickrs.forEach( (datepicker) => {
    console.log(datepicker)
    flatpickr(datepicker, {
      altInput: true,
      enableTime: true,
      dateFormat: "Y-m-d H:i",
      time_24hr: true,
      minTime: datepicker.dataset.openingTime,
      maxTime: datepicker.dataset.closingTime,
      minDate: "today",
      maxDate: new Date().fp_incr(30),
      disable: [rmydays],
      minuteIncrement: parseInt(datepicker.dataset.timeInterval, 10),
      locale: {
        firstDayOfWeek: 1
      }
    });
  })
};

function rmydays(date) {
  return (date.getDay() === 1);
}

export { initflatpickr };