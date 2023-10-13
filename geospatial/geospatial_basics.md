
# Geospatial Basic concepts

The goal of this document is to refresh Geospatial concepts.

**Geodesy** establish reference system and define a set of point, know as geodesic vertices.
Geodesic vertices group together form geodesic network.

**Geoid** defined a 3-dimensional surface where every point have the same gravitational attraction.

**Ellipsoids** provides a theoretical expression of the Earth's shape, base on a group of parameters: a, b.

The **WGS-84** ellipsoid is one of the most popular currently, used for the GPS system.

The **Datum** is a combination of a reference surface **ellipsoid** and a point in which is linked to the **geoid**.

## Coordinate reference systems

The combination of a coordinate system and a datum is called a **coordinate reference system (CRS)**.

Once the **CRS** is establish it is possible to represent geospatial data in a **spherical geometry** or **plane geometry**

**Geographical coordinates** use a spherical coordinates system in which the location of every point is defined by 2 angular values:(latitude, longitude).

_It is difficult to perform task such as measuring distances or areas_.

**Cartesian coordinates** assign a plane coordinate to every point on the earth's surface using a **cartographic projection**.

Projection can be conical projections, cylindrical projections.

All projections introduce distorsion in the distance, the angle or the area.

One of the must widespread projections is **Universal Transverse Mercator** base on the **UTM coordinate system**

The UTM grid contains 60 zones, each 6° of longitude in with. Zone 1 is locateed between 180° and 174° West, and numbering increases eastward.

Each zone is segmented into 20 latitude bands, ranging from 80° South to 84° North. These are coded with letters from C to X, excluding I and O due to their similarity to the numerals one and zero. Each band has 8° of latitude in height, except the X band, which has 12.

A UTM rectangle is therefore defined by a number and a letter.

To avoid negative numbers, the origin is assumed to have and X coordinate of 500000 meters and a Y coordinate of 10000000 meters, causing all coordinates referred to it to have only positive values.

## Coordinate conversion and transformation

If 2 datasets have different CRS, **coordinate conversion** have to be apply. If the coordinate conversion is called ***coordinate transformation**.

**Spatial Reference System Identifier (SRID)** to organise and code CRS.

The most common coding system is the **European Petroleum Survey group (EPSG)**

**References**

[Introduction to GIS by Victor Olaya](https://volaya.github.io/gis-book/en/)

[Basic of Geomatics by Mario A.Gomarasca](https://www.hzu.edu.in/uploads/2020/10/Basics-of-Geomatics.pdf)
