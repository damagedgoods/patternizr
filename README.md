
# Pattrnizr

A simple Processing program to generate geometric patterns. It takes some SVG shapes and generates instances in random positions with random colors.

![](./img/sample.gif)

# How to change the shapes

Just replace the SVG shapes under the /svg folder and reference them in the items array.

# Pattern parameters

You can edit the following values in the PDE file:
- tileSize: tile size in pixels. Samller means smaller shapes. There's a value for each shape.
- density: white percentage. 100 means everything is filled with shapes, 0 means no shapes.
- capas: RGBA colors for the shapes.
