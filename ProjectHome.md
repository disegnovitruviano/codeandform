# Code & Form code repository #
This Google Code repository is intended as a support for my [Code & Form blog](http://workshop.evolutionzone.com/). I will use it to publish libraries and sample code for Processing, as well as archives of code from workshops I have given. Check out the [Downloads](http://code.google.com/p/codeandform/downloads/list) for an overview of what's here so far.

At the moment the SVN tree is not really in use, but I plan to publish code through it eventually.

## 2011.0407 ModelBuilder released / unlekkerLib discontinued ##

![http://workshop.evolutionzone.com/images/Modelbuilder-GoogleCode.jpg](http://workshop.evolutionzone.com/images/Modelbuilder-GoogleCode.jpg)

The [release of the ModelBuilder library](http://workshop.evolutionzone.com/2011/04/06/code-modelbuilder-library-public-release) marks the discontinuation of unlekkerLib. I never had a chance to fix incompatibilities that arose since Processing 1.0, and the release of Karsten Schmidt's version of the TileSaver code made my library all but redundant.

ModelBuilder focuses on the construction of 3D models for digital fabrication, extending basic Processing functionality with convenient methods for constructing and manipulating mesh geometries. The [JavaDoc documentation](http://workshop.evolutionzone.com/code/modelbuilder/javadoc/index.html) provides a basic overview of the library, but the best way to get an idea of its functionality is to run the examples provided with the library. [Sample STL models can be downloaded from my Thingiverse](http://www.thingiverse.com/watz/things).

I recommend looking at [Toxiclibs from Karsten Schmidt](http://toxiclibs.org/) and [Hemesh from Fredrik Vanhoutte](http://www.wblut.com/2010/05/04/hemesh-a-3d-mesh-library-for-processing/) for other approaches to 3D modelling in Processing. Unfortunately, moving meshes between ModelBuilder and the other two libraries is currently a little complicated, I hope we can find a better solution for mesh interchange so models generated in one library can be used in another.

Bug reports and suggestions for improvement are welcome, please leave your comments on the [Code & Form blog post](http://workshop.evolutionzone.com/2011/04/06/code-modelbuilder-library-public-release).

### About ###

All code provided here is under the Apache License 2.0, although some examples might be based on Open Source libraries that come with other licenses. I've tried to include the proper licenses wherever appropriate, please let me know if I've missed something or failed to properly attribute code to the correct authors.

Bug reports, code improvements etc. are always welcome, my email is marius at unlekker dot net.

**[Marius Watz](http://www.unlekker.net/)**