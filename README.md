Envoy Examples
==============

In this repository you will find runnable example configurations.

## Usage
Jump into a subdirectory that tickles your fancy and run `docker-compose up`
You will then be able to send http requests to port `8889`.

## FAQ
### This readme is bad and you should feel bad!
Sorry :(
I will write more later if there is any interest in this repository.

### I gots an error!
#### Q: Overlapping IPv4?!
Oh no, I've received an error that looks like the following

```
Creating network "accesslogs_app_net" with driver "bridge"
ERROR: cannot create network 8cad3a35ca84a62271edeb10e3d23b558380d3e9821da57236344ad681ed8dda (br-8cad3a35ca84): conflicts with network 517b4cfb48cd96f9492a627c41b461542e9e228d4da70716ff8d095498ba55a8 (br-517b4cfb48cd): networks have overlapping IPv4
```

What do I do?

#### A: Overlapping IPv4
I'm sorry, I was a little lazy and didn't make new networks or an easier way to switch examples.  To cleanup a previous example run:
```docker-compose down``` 

Help Text:
```
docker-compose down - Stop and remove containers, networks, images, and volumes
```
