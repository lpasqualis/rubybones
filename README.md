# RubyBones #

Skeleton of a simple lightweight Ruby application intended to be used for small projects where you are not interested in carrying the full weight of Rails.

The skeleton provides you with all the boiler-plate code that you usually have to write to get started.

Main "features":

* Established code and directory structure.
* Stubs for Bundle and RVM related files.
* Initialization system. Just add initialization files in "initializers" and you are good to go.
* Supports development, production, test and any other environment you want to create
* Simple YML configuration.
* ActiveRecord-ready, for get you going quickly on the creation of an app that requires a DB.
* Migration stubs.

Currently an early-stage work in progress. Feedback, suggestions and pull requests are encouraged.

# Notes of Basic Usage #

* Grab a copy of rubybones and put it in a new project folder.
* Edit the files in config/ to establish an initial configuration. You can add configuration values in here anytime. You can access the values calling Config.get from your code.
* Edit Gemfile adding whatever gem you need. Install the gems with bundle install (see bundle documentation)
* Put the majority of your code under app/lib and sub-folders.
* If you are using a DB, make sure to set the configuration features.db = true in config/config.yml; Also, edit the db section of the config with your db name, username and password. Note that if you don't want to put username and password in the yml you can use environment variables (see initializer 00400_active_record.rb). Add your ActiveRecord migrations in db/migrate and your models in app/models
* If you need any initializer, add them in the proper order inside the initializers directory
* Set the environment (production, development, test, etc) with environment variable RUBYAPP_ENV (similar to RAILS_ENV)
* Configuration files configuration_$RUBYAPP_ENV$.yml will be loaded after the main config.yml file to allow you to customize your environment.
