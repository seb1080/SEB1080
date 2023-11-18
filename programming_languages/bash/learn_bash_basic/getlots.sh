#!/usr/bin/env bash

# This scripts task is to GET the feature from the WFS service
# then store the resutl name be the lot name
lots=('2161220' '2870777' '1424093' '3550497' '5331526' '1340637' '1567782' '2160597' '1566757' '1425390' '2316890' '1567837' '1064514' '1340267' '1424326' '1340561' '3794675' '4594306' '4594307' '5069561')

twolots=('2161220' '2870777')

for lot in ${twolots[@]}; do
    echo $lot
    cmd=$(curl --location "https://api.dev.interne.montreal.ca/api/it-platforms/geomatic/wfs-maps/montreal/ows?service=WFS&version=2.0.0&request=GetFeature&typeName=montreal%3Alots&outputFormat=application%2Fjson&CQL_FILTER=noLot%3D$lot")
    printf "%s,\n" $cmd >>"lot_$lot".geojson
done
