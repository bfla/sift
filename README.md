<img src='https://codeship.com/projects/ceefd040-b6f2-0133-1556-6accf076bcef/status?branch=master'/>

## This project is discontinued -- Post mortem:

####The original vision: 
- Goal: Only read emails that are actually important.  Get rid of all the 'inbox noise' that wastes time/energy.
- Unlike most mail clients, users 'sift in' only things that are important. (Anything else would've been sent to a 'noise/clutter' box.)
- Filters ('sifts') are intelligent and based on common use cases. For example, Sift recognizes who you talk to and respond to frequently and flags those as important.  It also knows that someone who uses Github frequently might want certain types of notifications (like when someone comments on a PR *they created*) but not other types.  So it would recognize that someone uses Github frequently and then reccomend smart filtering options.
- Tinder-like interface: Sifts are easy to add.  The app recommends a sift and the user swipes left or right depending on whether they want to add it.
- There are different types of filters which are represented by different functions. (The functions must be scalable using something like Amazon Lambda to process large numbers of incoming emails.)

####Reasons this experiment was abandoned:
- As I started building it, I began to question whether this was even a good approach.
- The existing gMail client package I was using didn't really provide all of the interfaces I wanted.  So drove up the time-cost of building the prototype.  I got far enough to realize it was going to be somewhat painful to make it work the way I wanted.
- I (bfla) realized I don't actually use email very much -- not enough to justify continuing on this once I realized I would basically need to create my own gMail client
- I started using Notion and it's actually quite good: https://notion.ai/

## Initial setup:
Google credentials must be setup (can be generated from console.developers.google.com):
```
# Easiest way to do this is from browser
var opts = {service: "google", clientId: "KEY", secret: "SECRET", loginStyle: "popup" };
ServiceConfiguration.configurations.insert(opts);

```
