import mapboxgl from 'mapbox-gl';
// import MapboxGeocoder from '@mapbox/mapbox-gl-geocoder';

const buildMap = (mapElement) => {
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  return new mapboxgl.Map({
    container: 'map-2',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
};

const addMarkersToMap = (map, marker) => {

    // Create a HTML element for your custom marker
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${marker.image_url}')`;
    element.style.backgroundSize = 'contain';
    element.style.backgroundColor = '#f79b9d';
    element.style.borderRadius = '50%';
    element.style.width = '25px';
    element.style.height = '25px';
    element.style.cursor = 'pointer';

    // Pass the element as an argument to the new marker
    new mapboxgl.Marker(element)
      .setLngLat([ marker.lng, marker.lat ])
      // .setPopup(popup)
      .addTo(map);
};

const fitMapToMarkers = (map, marker) => {
  const bounds = new mapboxgl.LngLatBounds();
  bounds.extend([ marker.lng, marker.lat ]);
  map.fitBounds(bounds, { padding: 30, maxZoom: 10, duration: 0 });
};

const initSmallMapbox = () => {
  const mapElement = document.getElementById('map-2');
  if (mapElement) {
    const map = buildMap(mapElement);
    const marker = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, marker);
    fitMapToMarkers(map, marker);
    map.addControl(new MapboxGeocoder({ accessToken: mapboxgl.accessToken,
                                      mapboxgl: mapboxgl }));
  }
};

export { initSmallMapbox };