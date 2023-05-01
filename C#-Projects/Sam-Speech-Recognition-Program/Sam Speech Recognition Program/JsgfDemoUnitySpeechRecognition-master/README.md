# JsgfDemoUnitySpeechRecognition
Este repositorio aloja un proyecto básico de la implementación de reconocimiento de voz en Unity3d para una estructura de comandos más elaborada, haciendo uso de de [Sphinx](http://cmusphinx.sourceforge.net/) desarrollada por CMU (Carnegie Mellon University).

Para este demo se tomó como base el proyecto de integración de sphinx con unity, mismo que se puede encontrar en el siguiente [Repositorio](https://github.com/MegaTherion/pruebaunitysphinx)

Para la estructura de comandos más elaborada se hace uso de [JSGF](https://www.w3.org/TR/jsgf/).

Además, se muestra como emplear diferentes archivos gramaticales en diferentes momentos, para de esta forma usar los comandos necesarios de acuerdo al requerimiento de la aplicación dentro del juego.

Comandos empleados:

      KeyPhrase1: "movement"
                  comando 1: move up one meters
                  comando 2: move down three meters
                  comando 3: move up four meters
                  ....
      KeyPhrase2: "rotation"
                  comando 1: rotate right fast
                  comando 2: rotate right slow
                  ...
El video demostrativo puede encontrarse en el siguiente [Enlace - video](https://www.youtube.com/watch?v=wbgd0YMNea8).
