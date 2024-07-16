var layerGroupTempatIbadah, layerGroupSekolah, layerGroupPenginapan;

layerGroupTempatIbadah  = L.layerGroup().addTo(map);
layerGroupSekolah       = L.layerGroup().addTo(map);
layerGroupPenginapan    = L.layerGroup().addTo(map);

layerControl.addOverlay(layerGroupTempatIbadah, "Tempat Ibadah");
layerControl.addOverlay(layerGroupSekolah, "Sekolah");
layerControl.addOverlay(layerGroupPenginapan, "Penginapan");

layerControl.addOverlay(batasKecamatanPasarwajo, "Batas Kec. Pasarwajo");

const layerGroupControls = [layerGroupTempatIbadah, layerGroupSekolah, layerGroupPenginapan];

function layerGroupsClearsLayers()
{
    
    layerGroupControls.forEach(value => {
        value.clearLayers();
    })
}

function removeLayersFromGroups(layerGroup) {

    var layerGroup = layerGroup;

    layerGroup.eachLayer((layer) => {
        layerGroupControls.forEach(layerGroup => {
            if (layerGroup.hasLayer(layer) === true) {
                layer.removeFrom(layerGroup)
            }
        })
    })
}

function reAddLayerGroupControl() {

    layerGroupControls.forEach(layerGroup => {
        if (map.hasLayer(layerGroup) === false) {
            layerGroup.addTo(map);
        }
    })

}