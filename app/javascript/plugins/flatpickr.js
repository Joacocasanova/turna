import flatpickr from "flatpickr";
import 'flatpickr/dist/themes/material_orange.css';

const initflatpickr = () => {
  flatpickr(".datepicker", {
    altInput: true,
    enableTime: true,
    dateFormat: "Y-m-d H:i",
    time_24hr: true,
    minTime: "16:00",
    maxTime: "21:00",
    minDate: "today",
    maxDate: new Date().fp_incr(30),
    disable: [rmydays],
    defaultDate: "16:00",
    minuteIncrement: 30,
    locale: {
      firstDayOfWeek: 1
    }
  });
};

function rmydays(date) {
  return (date.getDay() === 1);
}

export { initflatpickr };