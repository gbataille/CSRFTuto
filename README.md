# Sécurity Tuto

## CSRF Tuto

This small application is meant to demonstrate what a CSRF attack is

It uses a __Rails__ application where the CSRF protection has been deactivated. It
uses Devise as an authentication framework with session cookies. It exposes a
Todo resource that is meant to be attacked

### Setup

After cloning the repo, get the environment and run the migration

```bundle install```

```rake db:create db:migrate db:seed```

and then run the application with

```rails s```

## Login

You can login to the app with credentials user __gba@gba.com__ and password
__gba__

## Test the attack

If you go to the /todos page, you'll see that there are some items there
already from the seed. The point of the attack will be to insert malicious
records there.

The app contains a CSRFTuto-attacker-minisite. You can run this minisite with
any simple HTTP browser. For example, you can run

```rake csrf:start```

In the minisite, go to the root (index.html). You will find a few links that
generate the attack.
