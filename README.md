## Rails Test App



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

Test coverage is low at this point, focusing on the stack and deploy processes.

1. Ensure the Rails App and Lineman App are running
1. `rake test`

### Deploying to Heroku (staging environment)

1. Clone this repo and expand git submodules
  - add heroku remote to `./.git/config`
  - add heroku remote to `./client/.git/config`
1. Create Heroku Rails instance for the api.
  - `heroku create`
  - `heroku config:set RACK_ENV=staging RAILS_ENV=staging`
  - `heroku addons:add rediscloud`
  - `heroku config | grep REDISTOGO_URL`
  - `heroku config:set RAILS_RESQUE_REDIS=[redis]` where [redis] is ...
1. Create Heroku Lineman instance for the api.
  - `heroku create`
  - use the heroku-lineman-buildpack.
  - `heroku config:set BUILDPACK_URL=http://github.com/testdouble/heroku-buildpack-lineman.git`
  - `heroku config:set LINEMAN_ENV=staging`
1. 

