import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('provider_address');
  if (addressInput) {
    places({ container: addressInput, countries: ['ar'] });
  }
};

export { initAutocomplete };