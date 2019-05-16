huntprod/nullmail
=================

This is a small, scratch-based Docker image for running [nullmail
- A Null Router for SMTP][1], inside your docker-compose recipes,
and beyond!

I was trying to deploy a docker-ized software stack, in staging /
evaluation mode the other day, and ran across a fun behavior: it
falls over and dies if it can't send email.

A while back, I ran into this in my travels in Cloud Foundry land,
and I wrote [nullmail][1].  Now you can use it in Docker!

Running
-------

    docker run -it -p 25 huntprod/nullmail

It doesn't actually do anything.  The log stream (sent to stdout)
can be useful at times.
