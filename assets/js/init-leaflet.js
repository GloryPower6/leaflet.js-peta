var osmHOT = L.tileLayer('https://a.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png https://b.tile.openstreetmap.fr/hot/{z}/{x}/{y}.png', {
    maxZoom: 19,
    attribution: '&copy; <a href="http://www.openstreetmap.org/copyright">OpenStreetMap</a>'
});

var Stadia_AlidadeSatellite = L.tileLayer('https://tiles.stadiamaps.com/tiles/alidade_satellite/{z}/{x}/{y}{r}.{ext}', {
	minZoom: 0,
	maxZoom: 20,
	attribution: '&copy; CNES, Distribution Airbus DS, © Airbus DS, © PlanetObserver (Contains Copernicus Data) | &copy; <a href="https://www.stadiamaps.com/" target="_blank">Stadia Maps</a> &copy; <a href="https://openmaptiles.org/" target="_blank">OpenMapTiles</a> &copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
	ext: 'jpg'
});

var map = L.map("map", {
  center: [-4.005343728795926, 122.53154754638673],
  minZoom: 3,
  maxZoom: 19,
  maxBounds: [
    [90, 180],
    [-90, -180],
  ],
  maxBoundsViscosity: 1.0,
  layers: [osmHOT]
});

map.fitWorld();

var baseMaps = {
  "OpenStreetMap.HOT": osmHOT,
  "Stadia.AlidadeSatellite": Stadia_AlidadeSatellite
};

var layerControl = L.control.layers(baseMaps, null).addTo(map);

var batasKecamatanPasarwajo = L.geoJSON(variabelsBatasKecamatanPasarwajo, {
  "opacity": 0.5,
  "interactive": false,
  "fillOpacity": 0.2
})

map.on('baselayerchange', (e) => {
  console.log(e)

  sessionStorage.setItem("LastBaseLayer", e.name);
})

var LastBaseLayer = sessionStorage.getItem('LastBaseLayer');

if (LastBaseLayer) {
  const baseLayerName = LastBaseLayer;

  if (map.hasLayer(osmHOT)) {
    map.removeLayer(osmHOT)
  }

  if (map.hasLayer(Stadia_AlidadeSatellite)) {
    map.removeLayer(Stadia_AlidadeSatellite)
  }

  if (baseLayerName === "OpenStreetMap.HOT") {
    map.addLayer(osmHOT)
  }

  if (baseLayerName === "Stadia.AlidadeSatellite") {
    map.addLayer(Stadia_AlidadeSatellite)
  }
}

