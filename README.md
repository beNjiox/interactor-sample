Interactor Sample
================

[Check the demo](http://interactor-sample.herokuapp.com)

This is a simple app using the Interactor gem.

### What does this app do ?

* [x] Use interactors in order to handle the new comment
  * [x] One interactor to actually store the comment
  * [x] One to send a ThankYou message to the commenter (not really send anything)
  * [x] One to log the event through a Mixpanel kind of app (not really logging anything)
* [x] Show an example of a rollback, just check the box before adding a comment
* [x] Show an example of hook usage
* [x] Show an example with multiple hooks
* [ ] The code also contains some test best practices

### Setting up the app

```
$> git@github.com:beNjiox/interactor-sample.git
$> cd interactor-sample
$> rake db:migrate
```

If you clone the app, check out the logs! It will help you see how things are executed, in which order etc.

If you have any question, or want to see more stuff within this example app, feel free to create an issue.