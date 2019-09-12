# Fantasy Feedback API

## Project Links
- https://github.com/dnnyp/full-stack-project-api
- https://morning-shore-48477.herokuapp.com/rosters
- https://github.com/dnnyp/full-stack-project-client
- https://dnnyp.github.io/full-stack-project-client

## Technologies Used
- Ruby on Rails
- Pagy

## Process
This application is an API utilized by a fantasy football roster rating application (I know, quite the mouthful). My initial instinct was to shoot for the moon and create a full application which would allow users to create rosters, add players to the rosters, and add comments and ratings to other rosters. I had to take a step back and reconsider what my MVP was and narrow my focus on it. Utilizing ERDs and wireframes helped me visualize what I needed to build out. By scaling my v1 ERD back to just one resource, rosters, I was able to quickly scaffold it and spend time trying out some Ruby gems for pagination.

I utilized a lot of the examples we did in class to help me scaffold my roster resource. I found an interesting Bootstrap extension called Bootstrap Tables which would allow me to create dynamic tables using external API data. However, this extension required JSON data in a specific format. I spent a lot of time researching Ruby gems which would allow me to achieve this. I initially tried will_paginate and was able to get pagination to work with my roster resource, however it wasn't robust enough to get me where I wanted. I found a more configurable alternative in Pagy. I initially struggled to get it working but after getting help from my instructor, combing through the issues queue, and reading the documentation I was able to figure it out. I managed to get my JSON configured how I needed but it turns out I misunderstood the documentation for Bootstrap Tables and didn't need the server side pagination for it to work. I had to revert my changes.

Although I'm a bit disapointed I couldn't use Pagy in this project I am glad I got to experience researching new Gems, configuring them, and reading through their documentation and issues queues. I learned the importance of scaling back on my scope and understanding specifications.

## Unsolved Problems
My v2 of this project will allow users to add player resources to their rosters (rosters can have many players and players can belong to many rosters). Users can also create comment and rating resources which will belong to one roster. I would love to be able to use server-side pagination with one of these resources.

## Wireframe
[![ERD](https://raw.git.generalassemb.ly/ga-wdi-boston/full-stack-project-practice/a0e5a99e7d478e47803ec5c471611182b087bbc9/public/ERD.jpg)](https://generalassemb.ly/education/web-development-immersive)

## User Stories
- As a user I would like to be able to create a fantasy football roster.
- As a user I would like to be able to add players to a roster.
- As a user I would like to be able to provide feedback to a roster.
- As a user I would like to be able to see all feedback for a roster.
