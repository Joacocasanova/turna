import { initflatpickr } from "../plugins/flatpickr"

const setFlatpickrValues = () => {
  return new Promise(resolve => {
    const activeService = document.querySelector(".orange-background")
    const hiddenInputServiceId = document.querySelector("#booking_service_id");
    const hiddenInputDateTime = document.querySelector("#booking_start_datetime");
    hiddenInputServiceId.value = activeService.dataset.serviceId;
    const opens = activeService.dataset.openingTime;
    const closes = activeService.dataset.closingTime;
    const timeInterval = activeService.dataset.timeInterval;
    resolve([opens, closes, timeInterval])
  })
}

const cardSelector = () => {
  const inputFlatPicker = document.querySelector(".flat-show-card")
  const cards = document.querySelectorAll(".services-cards");
  cards.forEach((serviceCard) => {
    serviceCard.addEventListener('click', (event) => {
      inputFlatPicker.classList.remove('d-none');
      cards.forEach((card) => {
        card.classList.remove('orange-background');
      });
      serviceCard.classList.add('orange-background');
      setFlatpickrValues().then(hours => initflatpickr(hours[0], hours[1], hours[2]))
    });
  });
}


export { cardSelector };
