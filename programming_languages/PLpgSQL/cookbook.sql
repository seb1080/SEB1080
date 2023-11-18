

-- Build GeoJSON from seleted row
SELECT json_build_object(
    'type',       'Feature',
    'id',         li.id,
	'properties', json_build_object(
        'name', li."name",
		'layerId', li."layerId",
		'startDate', li."startDate",
		'endDate', li."endDate"
     ),
    'geometry',   ST_AsGeoJSON(geometry)::json
 ) FROM layer_items li where id = '419f809c-3116-4070-aa1f-f1d541f090b5';


 --- Est-ce-que le territoire d'application Extrémités intersect avec le
--- secteur de valeur 4 ?
select geometry from layer_items li where name = 'Extrémités' and "endDate" isnull
select geometry from layer_items li where name = '4' and "endDate" isnull

select ST_Intersects(
(select geometry from layer_items li where name = 'Extrémités' and "endDate" isnull),
(select geometry from layer_items li where name = '4' and "endDate" isnull));