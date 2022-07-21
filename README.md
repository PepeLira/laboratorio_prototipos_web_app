# Laboratorio_Prototipos_web_app
 A general Porpouse web app for the Lab


 This is a little project with the objective of clarify and organice the different Lab process and activities, 
 hopping to be a tool that could help students and coordinators to take advantage of the many machines and tools 
 available in the lab, always mantainig the order and the trasability requested by the University.


 # Development Enviroment 

 - Docker Compose
 - Ruby on Rails
 - PostgreSql

 For ease of use the development enviroment is going to be integrated in a docker container. This hopping to standarize the dependencies, features and tools, independent of the choosen operating system. Please be aware that the minimum spects required tu run the containers are at list 4 gb of ram and a decent procesor compatible with virtualization (As is stated in the docker [documentation](https://docs.docker.com/desktop/install/linux-install/)). Also, be sure that the virtualization option is activated in your BIOS.

## Start the web_app console

    $ docker compose run web_app bash

## Start the database

Inside the container console

    $ /app# bin/setup

## run the web_app 

In another console

    $ docker compose up


 # Useful Links 

 - Development Enviroment Build Guide (Not needed for the development): [Link](https://www.sobyte.net/post/2022-03/rails-on-docker/#introduction-to-docker-compose)

