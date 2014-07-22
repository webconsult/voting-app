Voting
=========

An app that lets users sign in with Facebook and vote on companies or individuals.

The app leverages Facebook O-auth to authenticate users to make it harder to set up and vote from multiple accounts.

The app was originally developed for nordicstartupawards.com and centraleuropeanstartupawards.com. In that setting we had to batch load a large number of nominees in multiple categories. For batch-loading data fixtures are used. The project includes a few sample fixtures. In addition, you can easily switch between using your "real" data in the fixtures or artificial filler data. Have a look at /db/seeds.rb. If you need to have multiple instances of the same app with different seed data you can easily set up multiple environments. 

For manually entering or editing the data, ActiveAdmin is used to provide an easy to use administration interface. Remember to set up an admin user in /db/seeds.rb.

