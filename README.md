## Rails Test App

Checking out the differences between Rails 3 and 4.  This is an
api-driven site, using a Backbone frontend.  I may change the
frontend to use Angular as well.

I'm also trying to settle on a full-stack framework, so I'm using this
project to test out different tools for Ruby API's and frontend
development.

### Getting Set Up

The project uses foreman to manage starting/stopping services.  You'll
need it installed globally.

```bash
# clone project and
bundle install --binstubs

# init client submodule
git submodule init   # init local conf file
git submodule update # run this to pull in updates in submodules

# install global npm bin's, if necessary
npm install -g foreman
npm install -g bower

# install client dependencies
cd client
npm install
bower install
cd ..

# make sure you have foreman/lineman
#   both installed globally
cp Procfile.dev Procfile
foreman start

# setup database
rake db:create:all
rake db:migrate

# api runs on localhost:3000
# client runs on localhost:8000
rails s

```

### Running the tests

1. Ensure the Rails App and Lineman App are running
1. `rake test`
