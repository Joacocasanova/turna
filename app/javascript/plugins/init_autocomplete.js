import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('provider_address');
  const neighborhoodInput = document.getElementById('provider_neighborhood');
  
  if (addressInput) {
    places({ container: addressInput, countries: ['ar'] });
  }
  if (neighborhoodInput) {
    places({ container: neighborhoodInput, countries: ['ar'] });
  }
};

export { initAutocomplete };
