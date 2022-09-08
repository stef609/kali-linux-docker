#!/bin/bash

docker pull blabla1337/owasp-skf-lab:java-$1

docker run -t -p 5000:5000 blabla1337/owasp-skf-lab:java-$1
