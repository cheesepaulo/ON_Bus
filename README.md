# [On Bus](https://on-bus.herokuapp.com/)
===================

![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.1.1-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
[![Codeship](https://img.shields.io/codeship/348f2750-1a67-0135-2583-4eee406cd8c3/master.svg)](https://codeship.com/projects/348f2750-1a67-0135-2583-4eee406cd8c3/status?branch=master)
[![Code Climate](https://codeclimate.com/github/cheesepaulo/ON_Bus/badges/gpa.svg)](https://codeclimate.com/github/cheesepaulo/ON_Bus)
[![Issue Count](https://codeclimate.com/github/cheesepaulo/ON_Bus/badges/issue_count.svg)](https://codeclimate.com/github/cheesepaulo/ON_Bus)

ON Bus is a minimalist and modern application for modern urban people.

# About

ON Bus is a web application builded to help people initially in São Paulo. The app uses API of SPTrans that maps all the bus traffic in the most populous city in the Southern Hemisphere. It can show us the lines of bus, stop points of bus and the arrivals forecast. This application is open source and has a single purpose: to make life easier for the inhabitants of São Paulo.

It is very easy to use: For example, you can search the lines of bus, some locations and list all the stop points of bus in that line. It is also possible to calculate the arrival of the next bus at the selected stop point. All you need is select the option that you want.

You can access on your smartphone, tablet or desktop, the app has a responsive layout that make things adaptive in many resolutions as possible. If you find any problem, have any suggestions or doubts, you can open a issue at this repository.

Are you a developer? Help us to make this app bigger and bigger and people's lives better! A little down in this README we have a step-by-step at how you can contribute with us. :)

Enjoy it!

# Require
```
  * Docker
  * Docker Compose
  * SPTrans API
  * Google Maps API
  * httpclient - HTTP accessing library gem for Ruby on Rails framework
  * Bootstrap
```

# Getting Started

### 1. Do a fork at original repository
```
https://github.com/cheesepaulo/ON_Bus
```

### 2. Clone your fork at a local repository

### 3. Start docker-compose
```
   $ docker-compose up --build      
```

### 4. Run all migrations
```
   $ docker-compose exec website rails db:create db:migrate      
```

### 5. How to execute other commands
```
$ docker-compose exec website commandName
```

### 6. Install new gems
```
$ docker-compose build
```

### 7. Start APP
```
$ docker-compose up
```

### 8. Test App
```
$ docker-compose exec website bundle exec rspec
```

## How to contribute to the project

### 1. Add the remote repository source at your local repositoy
```
$ git remote add upstream https://github.com/cheesepaulo/ON_Bus.git
```

### 2. Sync your repository with the original repository
```
$ git fetch upstream
```

### 3. Update your local repository
```
$ git checkout master
$ git merge upstream/master
```

### 4. Work on it and send your changes
```
$ git push origin master
```

### 5. Do a pull request at your fork on GitHub
