Interactor Sample
================

[![Deploy to Heroku](https://www.herokucdn.com/deploy/button.png)](https://heroku.com/deploy)

[Check the demo]()

This is a simple app using the Interactor gem.

## What does this app do ?

* Use interactors in order to handle the new comment
  * One interactor to actually store the comment
  * One to send a ThankYou message to the commenter (not really send anything)
  * One to log the event through a Mixpanel kind of app (not really logging anything)
* Show an example of a rollback, just check the box before adding a comment
* Show an example of hook usage
* The code also contains some test best practices