# What To Wear

This is a simple app that will eventually recommend outfits based on the forecast.

## Setup

-   Clone the repository. This just makes a local copy of the repo on your computer. Click on the green 'clone or download' button in the top right corner of the page. Copy the value in the field and within whatever directory you want your app to live in, run `git clone [that value]`. This will basically 'paste' the app into that directory and initialize git tracking, so you'll be able to track your changes.
-   install gems (`bundle install`) - these are just reusable chunks of code that allow us to not have to reinvent the wheel all the time. For example, a million websites out there use a 5-star rating system. There's probably a gem that you could install and use to implement that without having to build every piece of that yourself: finding an image of a star, making it clickable, recording a rating, calculating an average, etc.
-   create database (`rake db:create`)
-   run migrations (`rake db:migrate`). Migrations are basically just instructions for how to create/update tables in a database. When you start an application you'll have a database that's set aside for you (that's what `rake db:create` does), but it's completely empty. Our 'migrations' are instructions like 'create a users table' or 'add a column titled `first_name` to the users table' that take our empty database and update it to make it useful.
-   populate database with 'seeds' - these are just resources I've hardcoded into the app so you've got something to work with (`rake db:seed`)
-   run the rails server (`rails server`) in one tab of your terminal
-   In a separate tab in your terminal, run the rails console (`rails console`) - this will let you work with the database more or less directly, rather than having to go through the app.

## Basic git workflow

This is kinda like if you were writing a book with a few other people. There might be a master copy of the book (repository/'repo') in the library (github.com), but you'd also have a copy of the book at your house (local). When you want to work on the book, you duplicate the copy at the library to make a copy for your house, and then duplicate *that* copy so you can add, delete, cut out entire pages, add new pages, whatever, without losing your ability to also make changes to the original - what if there's a typo that needs to be fixed immediately? You wouldn't want to have to throw away all of your work just to fix that. That duplicate is a 'branch'.

When you're satisfied with your changes, you apply them all to the local master copy of the book ("merging" them), and then send that version to the library to replace the one that's currently there (`git push origin master`) - origin is just a variable that means "library". Git already knows that 'library' refers to github.com/whatever-this-repo-is-named, because it got set when you ran `git clone`. If you wanted to you could also push a work-in-progress branch to origin instead of master (`git push origin branch-name`) - this is just like if you wrote a really dope chapter to your book but don't want the world to see it until your editor reviews it first, and he can only look at it if it's saved in the library first.

-   The default branch is `master`
-   Create and switch to ('checkout') a new branch - you should always do work on a different branch. `git checkout -b new-branch-name-goes-here`
-   Do your work, make whatever changes you need.
-   Check out what files git has noticed you've changed: `git status`
-   Add all of those files to what you want to save ('commit') - `git add .` (`.` just refers to the current directory, which is everything. `..` refers to the immediate parent directory)
-   Create a 'commit', which is like a checkpoint for your work, and add a message indicating what you did up to that checkpoint (`git commit -m "did some stuff"`). The `-m` is called a 'flag', which is just an option that the `commit` command takes. It just means 'with the following message:'.
-   Push your branch to github `git push origin new-branch-name-goes-here`. `origin` is the name of the 'remote', which is your repo on github.com, as opposed to your local repo, which is just the directory you've got saved on your computer. `git push` pushes the branch named `new-branch-name-goes-here` to the remote named `origin`.
-   Create a pull request on github.com: a 'pull request' is a request to get your changes added into the default branch. Usually right after you push your branch you'll see an option appear that asks you if you want to create a pull request with your branch, but if not you can click on the 'branches' link within the code tab, find your branch, and click the 'new pull request' button there.

## Tasks

- [ ] Add some styling to the pages
- [ ] Add a 'comfortable' column to the 'outfits' table
