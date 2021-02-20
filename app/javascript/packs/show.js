import { initflatpickr } from "../plugins/flatpickr"

const cardSelector = () => {
  const form = document.querySelectorAll(".services-cards");
  const hiddenInput = document.querySelector("#booking_service_id");
  const startDateInput = document.querySelector("#booking_start_datetime")
  form.forEach((serviceCard) => {
    serviceCard.addEventListener('click', (event) => {
      form.forEach((card) => {
        card.classList.remove('orange-background');
      });
      serviceCard.classList.add('orange-background');
      hiddenInput.value = serviceCard.dataset.serviceId;
      startDateInput.dataset.openingTime = serviceCard.dataset.openingTime;
      startDateInput.dataset.endingTime = serviceCard.dataset.endingTime;
      startDateInput.dataset.timeInterval = serviceCard.dataset.timeInterval;
      initflatpickr();
    });
  });
}


export { cardSelector };
