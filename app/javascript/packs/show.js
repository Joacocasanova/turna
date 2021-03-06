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
  const dateInput = document.querySelector("#booking_start_datetime")
  const hiddenInputService = document.querySelector("#booking_service_id");
  const timeSlotsContainer = document.getElementById("time-slots")
  cards.forEach((serviceCard) => {
    serviceCard.addEventListener('click', () => {
      inputFlatPicker.classList.remove('d-none');
      cards.forEach((card) => {
        card.classList.remove('orange-background');
      });
      serviceCard.classList.add('orange-background');
      setFlatpickrValues().then(hours => initflatpickr(hours[0], hours[1], hours[2]))
    });
    serviceCard.addEventListener('click', () => {
      if (dateInput.value && hiddenInputService.value) {
        fetch(`/services/${hiddenInputService.value}/available_time_slots?date=${dateInput.value}`, { headers: { accept: "application/json" } })
        .then(response => response.json())
        .then((data) => {
          timeSlotsContainer.innerHTML = ""
          data.time_slots.forEach ((timeSlot) => {
            timeSlotsContainer.insertAdjacentHTML("beforeend",`<span class="available_time">${timeSlot}</span>`)
          });
          const timeBookingPills = document.querySelectorAll(".available_time")
          timeBookingPills.forEach((timeBookingPill) => {
            timeBookingPill.addEventListener('click', () => {
              timeBookingPills.forEach((Pill) => {
                Pill.classList.remove('selected-time')
              });
              timeBookingPill.classList.add('selected-time')
              dateInput.value = dateInput.value.slice(0, 11) + `${timeBookingPill.innerText}`
              console.log(dateInput.value)
            })
          });
        });
      }
    } )
  });
}

const dateSelector = () => {
  const dateInput = document.querySelector("#booking_start_datetime")
  const hiddenInputService = document.querySelector("#booking_service_id");
  const timeSlotsContainer = document.getElementById("time-slots")
  if (dateInput) {
    dateInput.addEventListener('change', () => {
      fetch(`/services/${hiddenInputService.value}/available_time_slots?date=${dateInput.value}`, { headers: { accept: "application/json" } })
      .then(response => response.json())
      .then((data) => {
        timeSlotsContainer.innerHTML = ""
        data.time_slots.forEach ((timeSlot) => {
          timeSlotsContainer.insertAdjacentHTML("beforeend",`<span class="available_time">${timeSlot}</span>`)
        });
        const timeBookingPills = document.querySelectorAll(".available_time")
        timeBookingPills.forEach((timeBookingPill) => {
          timeBookingPill.addEventListener('click', () => {
            timeBookingPills.forEach((Pill) => {
              Pill.classList.remove('selected-time')
            });
            timeBookingPill.classList.add('selected-time')
            dateInput.value = dateInput.value.slice(0, 11) + `${timeBookingPill.innerText}`
            console.log(dateInput.value)
          })
        });
      });
    })
  }
}


export { cardSelector, dateSelector };
