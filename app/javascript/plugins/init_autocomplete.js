import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('provider_address');
  const addressInput1 = document.getElementById('provider_address1');
  const neighborhoodInput = document.getElementById('provider_neighborhood');
  const neighborhoodInput1 = document.getElementById('provider_neighborhood1');
  
  if (addressInput) {
    places({ container: addressInput, countries: ['ar'] });
  }

  if (addressInput1) {
    places({ container: addressInput1, countries: ['ar'] });
  }


  if (neighborhoodInput) {
    places({ container: neighborhoodInput, countries: ['ar'] });
  }

  if (neighborhoodInput1) {
    places({ container: neighborhoodInput1, countries: ['ar'] });
  }
};

export { initAutocomplete };
