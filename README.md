## Twins Ticket Distribution

A very small and dumb app for distributing my Twins seasons tickets.

## Requirements

Developed on:
- Ruby 2.1.1
- Rails 4.0.4

## Deployment

After getting the database setup, populate it with `rake setup:all`. That will fill it with the games in `db/games.rb` and the attendees in `db/attendees.rb`.

### Local

If developing locally, create an initializer file (I use `config/initializers/local.rb`) and give it this line:

```ruby
ENV['secret_key_base'] = 'supersecretkey'
```

And if you want to turn on the ability to assign attendees to games, add this line

```ruby
ENV['allow_attendee_change'] = 'true'
```

And to turn off that functionality, just set that variable to nil or remove that line.

### Heroku (or wherever)

Deploying to Heroku is similar, but instead of using an initializer file set config variables.


