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
bundle install

# install client dependencies
cd client
npm install
cd ..

# make sure you have foreman/lineman
#   both installed globally
# you'll also need postgres
foreman start
rails s

# api runs on localhost:3000
# client runs on localhost:8000

```

### Running the tests

1. Ensure the Rails App and Lineman App are running
1. `rake test`

