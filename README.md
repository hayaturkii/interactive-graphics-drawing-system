# Graphics Drawing System
An interactive vector desktop drawing application built natively using **C++** and the **Qt Framework**. Developed as part of an advanced Object-Oriented Programming (OOP) curriculum, this system serves as a practical implementation of software engineering design patterns, event-driven architecture, and mathematical geometric modeling.

## Key Features
* **Interactive Vector Drawing:** Real-time rendering of fundamental geometric structures including Lines, Rectangles, Ellipses, and dynamic multi-point Polylines.
* **Polymorphic Shape Manipulation:**
  * **Selection Engine:** Custom ray-casting bounding boxes detect precise mouse-click positions to isolate canvas objects.
  * **Translation Canvas:** Real-time graphical shifting (pixel offsets along the X/Y axes).
  * **Dynamic Recoloring:** Native bridge integration with `QColorDialog` for updating border styles dynamically.
* **Real-Time Geometric Computations:** Continuous evaluation of perimeter, area, and Euclidean lengths outputted directly to the live system status bar.
* **File Serialization System:** Implements native project state persistence, enabling users to export and load active layout schemas natively as `.draw` binaries via `QDataStream`.

## Architecture & Core OOP Design
The core engineering strategy utilizes strict **Object-Oriented Programming (OOP)** paradigms to abstract rendering pipelines away from structural layout layers.

```text
       +-----------------------+
       |   Shape (Abstract)    |
       +-----------------------+
                   |
     +---------+---+---------+---------+
     |         |             |         |
 +---+---+ +---+---+     +---+---+ +---+---+
 | Line  | | Rect  |     |Ellipse| |Polyline|
 +-------+ +-------+     +-------+ +-------+
