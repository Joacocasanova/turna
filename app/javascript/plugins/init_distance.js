import * as turf from '@turf/turf';
const initDistance = () => {
  const distances = document.querySelectorAll(".distance");

  if(distances) {
    let userLatitude;
    let userLongitude;
    navigator.geolocation.getCurrentPosition((data) => {
      userLatitude = data.coords.latitude;
      userLongitude = data.coords.longitude;
      const userCoordinates = [userLatitude, userLongitude];

      distances.forEach((distance) => {
        const providerCoordinates = [distance.dataset.latitude, distance.dataset.longitude];
        const distanceResult = turf.distance(userCoordinates, providerCoordinates);
        if(distanceResult){
          distance.innerText = `Estas a ${distanceResult.toFixed(2)} km`
        }
      });
    });
  }
}

export { initDistance };