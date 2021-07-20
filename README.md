
![](postit.gif)


![](postit.gif)

# POSTIT

A simple Ruby on Rails notepad application.
> PRs and issues welcome!



# Getting started
To get started, first clone the repo and `cd` into the directory:

```
$ git clone https://github.com/marcelocd/postit.git
$ cd postit
```

Then install the needed gems (while skipping any gems needed only in production):

```
$ bundle install --without production
```

Install JavaScript dependencies:

```
$ yarn install
```

Next, migrate the database:

```
$ rails db:migrate
```

Finally, run the test suite to verify that everything is working correctly:

```
$ rails test
```

If the test suite passes, you'll be ready to run the app in a local server:
```
$ rails s
```
## Configuration
### API Authentication
#### Bearer token

This app uses the *`ENV['AUTHORIZED_BEARER_TOKEN']`* variable for API authentication.
So make sure you set the appropriate environment variable (*your .env file, for example*):

```
AUTHORIZATION_BEARER_TOKEN = "choose_a_bearer_token"
```
### *and...* Ready to go!

## License

This source code is available under the MIT License and the Beerware License. See [LICENSE.md](LICENSE.md) for details.
