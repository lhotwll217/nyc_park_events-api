# NYC Parke Events Desktop App - API/Backend
Client hosting - https://nyc-park-events-desktop-app.netlify.app/ 

## Install
Clone the repository
git clone git@github.com:lhotwll217/nyc_park_events-api.git

cd nyc_park_events-api.git

## Check your Ruby version
ruby -v

The output should start with something like ruby 2.7.4

If not, install the right ruby version using rbenv (it could take a while):

rbenv install 2.7.4

## Install dependencies


bundle install

## Set environment variables...

This repo has the dotenv gem and a .env file but I am not using it to "hide" anything and it is included in the git commit & not included in the .gitignore The BASE_URL variable links to a personal git repo hosting the most current JSON event data supplied by NYC Open Data. They don't truly host this data and there is no endpoint, but they make it available for download. I know, that is not the point of Oped Data. But it's what we got.

Another thing to mention is that said data is updated every two weeks and is only for the "Upcoming 14 Days". See for yourself...

https://data.cityofnewyork.us/Recreation/NYC-Parks-Public-Events-Upcoming-14-Days/w3wp-dpdi

There is a limit to the capability of this app because of the data but 14 days is fine for now & also, all we have. 

Eventually pagination needs to be included, querying for all events will be slow or has been for me. You can adjust the .limit() ActiveRecord query method to optimize for your machines capabilities. Surprisingly it does much better deployed, thank you Heroku. 

I will elaborate on future plans for performance and database design modifications/enhancements below.

## Initialize the database

This repo has been configured to use postgresql as the default database. Make sure you have postgresql installed locally if you would like to use it. Heroku likes postgresql so we do too. Checkout the database.yml if you are curious about configuration or changing it for your environment.

Hypothetically, if anyone would want to work on this API on there local machine to imrove it using another ActiveRecord compatible database, database.yml would need to be added to .gitignore on their end. 

### Run These To Create & Seed Database

rails db:create db:migrate db:seed

The db:seed uses the rest-client gem and json gem to fetch the data from the above mentioned BASE_URL, it should work smoothly after a "bundle install" command.

The other data is user generated. Use the client repo to create it with the frontend https://github.com/lhotwll217/nyc-park-events-client or HTTP Request app like PostMan or Insomnia.

## Add heroku remotes

Don't.

As of writing this I still need to optimize Heroku & Git for collaboration and deployment. This will happen by 10.20.21. In the mean time, fork this repo, do your thing and hit me up if you want to add any features.