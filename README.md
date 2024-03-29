# Cavalcade

a lightweight infrastructure for using [Resque](https://github.com/defunkt/resque) as a stand-alone job queue

## Overview

Github built Resque to perform background jobs for the github web app. It has gained a large following in the Ruby community for running out-of-process jobs in all sorts of web apps.

But Resque can be very useful outside of a web app, too. What if you want to write jobs in Ruby and just enqueue them from your console? Or from a Java application? Or in cron jobs? Cavalcade to the Resque!

Cavalcade creates a Resque-based, stand-alone job queue, and provides an executable to manage and enqueue all of your jobs.

## Philosophy

Cavalcade is *not* a wrapper around Resque. In fact, it makes a point of *not* obfuscating or overriing any of Resque's native functionality. Any job that you write for Cavalcade can be used interchangeably with any app that uses Resque. Think of Cavalcade as minimalist piping that lets you get started writing jobs quickly.

## Getting Started

The quickest way to get started is to fork the [Cavalcade Demo Project](https://github.com/freerobby/cavalcade-demo) and start adding your own Jobs. The demo project [README](https://github.com/freerobby/cavalcade-demo/blob/master/README.md) contains a detailed tutorial.

## Contributing to Cavalcade
 
* Check out the latest master to make sure the feature hasn't been implemented or the bug hasn't been fixed yet
* Check out the issue tracker to make sure someone already hasn't requested it and/or contributed it
* Fork the project
* Start a feature/bugfix branch
* Commit and push until you are happy with your contribution
* Make sure to add tests for it. This is important so I don't break it in a future version unintentionally.
* Please try not to mess with the Rakefile, version, or history. If you want to have your own version, or is otherwise necessary, that is fine, but please isolate to its own commit so I can cherry-pick around it.

## Copyright

Copyright (c) 2011 Robby Grossman. MIT Licensed. See LICENSE.txt for details.

