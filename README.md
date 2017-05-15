**ON Bus**
===================

![ruby](https://img.shields.io/badge/Ruby-2.4.1-red.svg)
![rails](https://img.shields.io/badge/Rails-5.1.0-red.svg)
![rails](https://img.shields.io/docker/automated/jrottenberg/ffmpeg.svg)
[![Codeship](https://img.shields.io/codeship/348f2750-1a67-0135-2583-4eee406cd8c3/master.svg)](https://codeship.com/projects/348f2750-1a67-0135-2583-4eee406cd8c3/status?branch=master)
[![Code Climate](https://codeclimate.com/github/cheesepaulo/ON_Bus/badges/gpa.svg)](https://codeclimate.com/github/cheesepaulo/ON_Bus)
[![Issue Count](https://codeclimate.com/github/cheesepaulo/ON_Bus/badges/issue_count.svg)](https://codeclimate.com/github/cheesepaulo/ON_Bus)

#Sobre o projeto

Descrição do projeto.

# Require
```
  * Docker
  * Docker Compose
```

# Getting Started

## 1. Faça um fork do repositório

## 2. Clone o fork que acabou de criar

## 3. Start docker-compose
```
   $ docker-compose up --build      
```

## 4. RUN migrations
```
   $ docker-compose exec website rails db:create db:migrate      
```

# How To RUN something else
```
$ docker-compose exec website commandName
```

# Install new gems
```
$ docker-compose build
```

# Start APP
```
$ docker-compose up
```

# Test App
```
$ docker-compose exec website bundle exec rspec
```

# Contribuindo com o projeto

## 1. Adicione a origem do repositório remoto
```
$ git remote add upstream https://github.com/cheesepaulo/ON_Bus.git
```

## 2. Sincronizar o fork com o repositório principal
```
$ git fetch upstream
```

## 3. Atualizar a sua cópia local
```
$ git checkout master
$ git merge upstream/master
```

## 4. Trabalhe e envie os commits normalmente
```
$ git push origin master
```

## 5. Faça um Pull Request para o repositório principal a partir do seu fork no github.com
