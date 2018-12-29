import 'mapbox-gl/dist/mapbox-gl.css'
import mapboxgl from 'mapbox-gl/dist/mapbox-gl.js';

 // Home Page Map

const mapElement = document.getElementById('map');

if (mapElement) { // only build a map if there's a div#map to inject into
  mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
  const map = new mapboxgl.Map({
    container: 'map',
    style: 'mapbox://styles/mapbox/streets-v10'
  });
  const markers = JSON.parse(mapElement.dataset.markers);
  markers.forEach((marker) => {
    new mapboxgl.Marker()
      .setLngLat([marker.lng, marker.lat])
      .setPopup(new mapboxgl.Popup({ offset: 25 }) // add popups
      .setHTML(marker.infoWindow.content))
      .addTo(map);
  })
  if (markers.length === 0) {
    map.setZoom(1);
  } else {
    map.setZoom(14);
    if (navigator.geolocation) {
    navigator.geolocation.getCurrentPosition(function(position){
      map.setCenter([position.coords.longitude, position.coords.latitude]);
    });
  } else {
    x.innerHTML = "Geolocation is not supported by this browser.";
  }
  }
}
