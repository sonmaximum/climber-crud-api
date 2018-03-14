# Project Overview

The code in this repository (deployed [here](https://climber-crud-api.herokuapp.com/), along with the corresponding front-end client (repo [here](https://github.com/sonmaximum/climber-crud), comprise the app [Climber CRUD](https://sonmaximum.github.io/climber-crud/), a Climbing Route User Database.  The app is designed to allow rock climbing hobbyists to track locations at which they have climbed and climbing routes they have completed.  It uses a database of three resource tables and the relationships between them to allow users to perform standard Create-Read-Update-Destroy actions for climbing routes and locations.

## Technologies Used

This project's front-end is built with JavaScript (primarily) along with HTML, CSS.  It makes use of jQuery, AJAX, bootstrap, and SASS, as well as relying heavily on Handlebars to display lists of resource instances.  The back-end is an API consisting of a postgreSQL database maintained using Ruby-on-Rails for ORM.

## Development Process

This project in many ways was a direct successor to my Tic-Tac-Toe game project, and built on what I learned there.  There were also paralells with my previous work with Python and Django, which was helpful in approaching the back-end.

My [user stories](/userstories.md) were admittedly rather general, being sort of more like "user epics", but they encompassed the overall goals of the project.  And while my [wireframes](https://i.imgur.com/606a2EF.jpg) are rather simple, I feel like the end result is really quite close to their design.

Similarly, the final database resembled the original [ERD Diagram](https://i.imgur.com/JFZVo04.jpg) closely, with two differences: Route_type did not end up being a seperate resource, as its content is static and can just be held in an array.  And an additional relationship between users and locations (the "maintainer" relationship) was added.

I focused on the back-end/API to start with, creating the route resource, adding a relationship to users, creating the location resource, adding its relationship to users, and then updating the routes resource to contain a foreign key to location.  

After that, I focused on building out all of the front end functionality, making sure user authorization and crud actions on both resources functioned correctly before implementing any layout or styling.  I made heavy use of handlebars for templating the resource lists as well as for dynamic content.

The styling/layout portion of the project took me significantly longer than anticipated, but I think in the end it was effective, and I am fairly satisfied with the result.

# Wins

Some things about the project that I'm proud of include aesthetics, which I think are improved over my tictactoe game (including the background image, transparencies, and icons), the number of resources and relationships, and the multiple listing views available.

# Challenges

Some of challenges I faced included:

1. Ensuring the layout appeared and functioned as I intended, such as the two content areas that can scroll indepentently.

2. Allowing routes to be deleted from any of the "my routes" views and having the currently displayed list update appropriately.

3. Having a dropdown list of climbing locations (that updates dynamically as locations are added to the database) available when interacting with the related Routes resource.

4. Allowing two different relationships between locations and users, a "maintained by" relationship and a "climbed at" one.

5.  Translating Route Type and Location to database keys and back where necessary

6.  Allowing several different filtering options for a user's routes, and ensuring they all function correctly.

# Future Directions

I see four main areas of remaining work:

1.  Mobile interface\responsiveness could use a lot of improvement.
2.  I would like to put more work in to the location maintainer relationship - the end product should probably have a sort of admin/moderator-type account responsible for maintaining location resources, rather than just any user.
3.  I would also like to further divide the routes resource, splitting out shared information (like route location, rating, color, type) from information specific to a user (like their result progress, number of hangs, and their projects).  The former would be beneficial to be a public resource (again, possibly with moderation) while the latter might make sense to be made private.
4. General code refactoring and consolidation
