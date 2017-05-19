# Must See Movies Auth

In this project, we'll practice using the Devise gem to add authentication and authorization.

Our goal is to allow users to bookmark movies that they intend to watch or that they loved. **In other words, we need to be able to identify users and tailor the application for them, rather than having the app treat all visitors the same.**

Our starting point is the target for the last project, MSM Associations. Now we want to add the following:

 - Make the "Dummy" sign in, edit profile, etc, links actually work; users should be able to register with their email and password. How can we achieve this?
 - Then, users should be able to click a button on a movie's show page to bookmark it.
 - Users should be able to visit a page that shows a list of movies that they have bookmarked.

## Devise Guide

Have the [Devise Guide](https://guides.firstdraft.com/authentication-and-authorization-with-devise.html) open in a tab to refer to as we work together.

## Windows bcrypt error

Note: Windows users, at some point you may run into an error with the bcrypt gem when you try to rails db:seed or sign in with the admin user. In order to resolve,

 1. Shut down your `rails server` if you have one running, and/or
 1. Launch Command Prompt with Ruby on Rails, and navigate to your project  folder.
 1. At the command line, run:

    ```ruby
    gem uninstall bcrypt
    ```

    If you're asked "Continue with Uninstall?", answer "y".

 1. At the command line, run:

    ```ruby
    gem uninstall bcrypt-ruby
    ```

    If you're asked "Continue with Uninstall?", answer "y".

 1. At the command line, run:

    ```ruby
    gem install bcrypt --platform=ruby
    ```

    If you're asked "Continue with Uninstall?", answer "y".

 1. In Atom, add the following to the `/Gemfile`:

    ```ruby
    gem 'bcrypt', platforms: :ruby
    ```

 1. At the command line, run: `bundle install`
 1. (Re)start your `rails server`, and you should be good to go!

## Setup

 1. Fork, clone, and open the code.
 1. `bundle install`
 1. `rails db:migrate`
 1. Start the server and navigate to [http://localhost:3000](http://localhost:3000)
 1. Quickly pre-populate some data:

    ```
    rails db:seed:characters
    ```
