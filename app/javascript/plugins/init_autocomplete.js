import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('flat_address');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };

Styling your map

You can use the Mapbox Studio to design your own maps, or use existing designs

Then just update the style key, when initialising your map:

const map = new mapboxgl.Map({
  container: 'map',
  style: 'mapbox://styles/pdunleav/cjofefl7u3j3e2sp0ylex3cyb' // <-- use your own!
});
