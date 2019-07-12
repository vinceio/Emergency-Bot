# Emergency Bot

The Emergency Bot Repo

The idea is to enable quick and easy emergency information via slack slash commands.

eg. `/emergency`

The user would expect to see relevant information that would be pertinant in an emergency such as:

* Office Location
* Emergency Phone Numbers
* Office Emergency Contacts

## Proposed Features

* Works across Multiple Offices
* Set off action plans (eg. Code Blue, Code Red) to allow for various items

* Contacte a specified list of people in slack, text messages, emails etc.

* Enable Location based emergency notifications

  * hurricanes
  * forrest fires
  * earth quakes
  * tsunami
  * Thors Finger Snap

* Multi Platform notifications
* Test to 911 Integration
* Family based contact codes
* Stats for number of emergencies etc.

## Structure

* Root - Root of project contains the following
  * app folder - contains the python app
  * server folder - contains the app server files
  * docker-compose.yml - used to glue together docker images
  * setup.sh - the set up script

## Running the Example App

* Navigate to the app directory and build the docker container with the following command:

  * `docker build -t hellothere .`
* Run the docker container with the following command:
  * `docker run -it --rm -p 127.0.0.1:8888:8080/tcp --name hellothererunning hellothere`
  * You should be able to navigate to <a href=127.0.0.1:8888> 127.0.0.1:8080 </a> and see the running app.
