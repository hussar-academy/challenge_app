# Challenge App

Hello, Sir! This is a challenge application that will test your practical knowledge of following tools:

* Ruby programming language
* Ruby on Rails web framework
* Git version control system

## What to do

1. Get the code

  You need to clone this repository. Please do not fork it, because it would make your code visible to other challengers. We don't want this.

    git clone --origin academy https://github.com/hussar-academy/challenge_app

  If you don't have a GitHub account yet, now is the perfect time to create one. Then create a repository named `challenge_app` and push the code.

    git remote add origin git@github.com:your-username/challenge_app.git
    git push --set-upstream origin master

2. Install ruby

  The actual procedure will depend on your operating system. If you're on OS X or Linux (recommended development platforms) consider using [RVM](https://rvm.io/) or [rbenv](https://github.com/sstephenson/rbenv). On Windows [RubyInstaller](http://rubyinstaller.org/) should do the trick. Either way you'll need ruby version 2.0 or higher.

3. Install dependencies

  This step is as easy as running:

    `bundle`

  This will install all dependent libraries that are used in the application.

4. Create database

  The application is set up to use SQLite database, so you may need to install it first on your system. Then fire the command:

    `bundle exec rake db:create db:migrate`

  It will first create an empty database and then migrate its stucture.

5. Start the application

  Now you should be ready to start the application. Just use the following command and the app should be running at http://localhost:3000:

    `bundle exec rails server`

6. Write some code and show off your work!

  From now on, you're on your own. Read the Specification and Development Guidelines below and check the Resources for hints on where to look for help.

  Good luck!

## Specification

The application is a question and answer site with features similar to [Stack Overflow](http://stackoverflow.com), but it still needs some work.

### Features

1. Users need to create profiles to add questions and answers.
2. Question has title and contents. Title should be required.
3. Answer has only contents. It should be required.
4. Users can update their questions, but not answers.
5. Users can vote on answers added by users. It should be visible how many votes each answer has received.
6. Question's author can accept one answer to the question. This answer should be marked as "Accepted".
7. No one can add new answer to a question that already has an accepted answer.
8. Users collect points. New users get 100 points for free.

  Hint: Define user.points attribute.

9. When user's answer is accepted he receives 25 points.
10. Creating a question costs 10 points.
11. Users can set their names and it should be displayed everywhere instead of e-mail.

  Hint: User profiles are implemented using devise gem. Check its documentation to find out how to handle additional attributes on registration and edit profile pages.

12. Users can upload avatars which should be automatically scaled to 100x100px size.

  Hint: Use a gem that handles file uploads and image manipulation.

13. Once a user reaches 1000 points, she receives Superstar badge that is visible on his profile page.

### Guidelines

1. Create atomic, self-containing commits.
2. If you have any problems ask for help in our public [Chat Room](https://www.hipchat.com/gVsjIkRpD).
3. Some features are defined in files in `features/features` directory. If you're curious, they're written in Cucumber and this is executable code. You can run it with `bundle exec cucumber` and check if your code satisfies these definitions.
4.  Don't worry if you're not able to complete all the features, do as many as you can. When you're done push your code to your GitHub repository and deploy the application to [Heroku](http://heroku.com) so that we can access it and test. Then write us an e-mail at academy@hussa.rs with the links.


## Resources

Here's the list of useful resources that might help you on your journey.

### Ruby

* http://iwanttolearnruby.com
* https://www.codeschool.com/paths/ruby

### Ruby on Rails

* http://guides.rubyonrails.org
* http://api.rubyonrails.org/

### Git

* https://try.github.io
* https://www.atlassian.com/git/tutorial
* http://git-scm.com/book

### Heroku

* https://devcenter.heroku.com/articles/getting-started-with-rails3
