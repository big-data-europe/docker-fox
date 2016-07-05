#!/bin/bash

#Uncomment lines for learning
#sed -i -e 's#training: false#training: true#g' 'fox.properties'
#java -Xmx$XMX -cp fox-2.3.0-jar-with-dependencies.jar org.aksw.fox.FoxCLI -l$LNG -atrain -iinput/Wikiner/aij-wikiner-de-wp3.bz2 | tee learn.log
#sed -i -e 's#training: true#training: false#g' 'fox.properties'

java -Xmx$XMX -cp fox-2.3.0-jar-with-dependencies.jar org.aksw.fox.FoxRESTful -l$LNG | tee run.log
