#################################
Fedora Mingw32  build enviroment 
#################################

*******
Build  
*******

.. code-block:: sh

    $ sudo docker build -t fedora_mingw32:v1

*******
Run  
*******

.. code-block:: sh
    
    $ sudo docker run -d -v $HOME:/root --name fedora_mingw32  fedora_mingw32:v1



