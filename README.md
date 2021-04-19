# graylog-docker

#Background 

A utility that parses docker container logs and sends them to Graylog. 

The utility will automatically when new containers are spawned as well as when containers are destroyed

#Parameters

                     First Parameter - Either start, stop or status
                     Second Parameter - The address of the Graylog server
                     Third Parameter - The port of the Graylog server
                     
#Installation

                     git clone https://github.com/RamSailopal/graylog-docker.git
                     cd graylog-docker
                     ./install.sh
                     
#Usage 

                     graydock "start" "graylogserver" "12202"



