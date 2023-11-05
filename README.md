# docker-php-check-SA-mobile-numbers

A dockerized PHP application that permits to check one or many(with a CSV file) South African mobile numbers.

# App Requirements

In order to run this application, you need Docker (Version 24 or above) and Docker Compose installed in your system.

# How To Run
Just clone the repository:
<pre>git clone https://github.com/pierogth/docker-php-check-SA-mobile-numbers.git</pre>
Then go in the folder of the project:
<pre>cd docker-php-check-SA-mobile-numbers</pre>
To launch the app, first of all you have to build the Docker image: open a terminal in the folder where you have cloned this project and type the command:<br>
<pre>docker build . -t docker-php</pre>

After this, you have a Docker Image builded in your PC tagged by docker-php, you have now to run this image in a Docker container, with the command:
<pre>docker run -p 9999:9999 docker-php</pre>

Now, if you go on localhost:9999 with a browser, you can see and use the App.

# Automatic test

To run the automatic Unit Tests of this App, you have to run the command:
<pre>./vendor/bin/phpunit tests</pre>
in the docker container terminal, so, if you have Docker Desktop GUI you can access on the terminal of the container and run the command above, or alternatively, you can 
execute a terminal of the container with this command:
<pre>docker exec -it |mycontainer| bash</pre>
The placeholder |mycontainer| represent the ID of your Docker container running on your PC, to see it, just run <pre>docker ps</pre> command.
After this you can run the command above for phpunit tests.
