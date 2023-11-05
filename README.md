# docker-php-check-SA-mobile-numbers

A dockerized PHP application that permits to check one or many(with a CSV file) South African mobile numbers.

#App Requirements

In order to run this application, you need Docker (Version 24 or above) and Docker Compose installed in your system.

#How To Run

To launch the app, first of all you have to build the Docker image: open a terminal in the folder where you have cloned this project and type the command:<br>
<pre>docker build . -t docker-php</pre>

After this, you have a Docker Image builded in your PC tagged by docker-php, you have now to run this image in a Docker container:
<pre>docker run -p 9999:9999 docker-php</pre>
