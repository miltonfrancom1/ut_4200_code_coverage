# Assignment Documentation

## Building a Node.js project with CircleCi

In this assignment, we configured a CircleCI pipeline for a provided Node.js project. This document outlines the process.

### 1. Fork the Project

We began by forking the project files that Professor Morrison had sent us. This enable us to add files and make changes that were seperate from his.

### 2. Set up code

This was perhaps the longest and most confusing part. We were tasked to set up a node executor, checkout repository code, install project dependencies using npm, run unit tests and code coverage, and then store the results as artifacts. 
This was difficult to understand, but luckily I was able to figure it out. We used a build job to define everything we wanted to happen. One of the things i found difficult was trying to figure out what the right commands were, when they ended up being very simple.
Saving the artifacts and test results could be very useful for later, if we ever wanted to go through and see why there was an error.
Another part that was difficult for me was trying to figure out why the storing wasn't working. it turns out I was just not using the correct path, so I went down a rabbit hole of trying to fix it, when it was a really easy fix. 

