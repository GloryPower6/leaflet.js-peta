var LeafIcon = L.Icon.extend({
    options: {
        shadowUrl: './assets/images/marker-shadow.png',
        iconSize      : [25, 31],
        shadowSize    : [7, 1],
        iconAnchor    : [12, 31],
        shadowAnchor  : [3, 0],
        popupAnchor   : [25, -19],
        tooltipAnchor : [25, -19],
    }
})

var 
    iconTempatIbadah    = new LeafIcon({iconUrl: './assets/images/tempat-ibadah.png'}),
    iconPenginapan      = new LeafIcon({iconUrl: './assets/images/penginapan.png'}),
    iconSekolah         = new LeafIcon({iconUrl: './assets/images/sekolah.png'})

const setCategoryIcon = (marker, icon) => {
    switch (icon) {
      case "tempat-ibadah":
        marker.setIcon(iconTempatIbadah);
        break;
      case "penginapan":
        marker.setIcon(iconPenginapan);
        break;
      case "sekolah":
        marker.setIcon(iconSekolah);
        break;
    }
}

const addToLayersGroup = (marker, icon) => {
  switch (icon) {
    case "tempat-ibadah":
      layerGroupTempatIbadah.addLayer(marker);
      break;
    case "penginapan":
      layerGroupPenginapan.addLayer(marker);
      break;
    case "sekolah":
      layerGroupSekolah.addLayer(marker);
      break;
  }
}