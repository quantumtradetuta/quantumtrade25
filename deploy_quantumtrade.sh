#!/bin/bash
docker pull quantrocket/quantrocket:latest
docker build -t quantumtrade .
docker run -d --name quantumtrade_container -p 8081:8081 -e QUANTROCKET_LICENSE="ur3024957-13bc71592397cca995d353bd" quantumtrade
echo "QuantumTrade deployed. Access at http://render-url:8081"