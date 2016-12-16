
# Makersbnb

This project aimed to replicate Airbnb, providing users with an interface to either rent out spaces or book them.

## Getting Started

To get started,fork this repo and clone it on your local system.

Run bundle install to check that all the correct gems are ready to go.


To run the site on local host, use `rackup` and open up localhost with '9292'.

### Prerequisites

This project runs in ruby '2.3.1'

### Installing

To get this project running with correct databases, you will need to use psql and use `CREATE DATABASE` to create two databases - 'makersbnb_development' and 'makersbnb_test'

## Running the tests

To see the tests in action, use `rpsec` in the terminal.

### Break down into end to end tests

We have broken our testing into model testing and feature testing.
Our feature tests look a bit like this:
```
scenario "owner can confirm the request" do
  owner_receives_a_request
  click_button "Confirm"
  expect(page.current_path).to eq "/requests"
  expect(page).to have_content "Status: Confirmed"
end
```

And our model tests look like this:

```
it "authenticates when given a valid email address and password" do
  authenticated_user = User.authenticate("example@email.com", "1234")
  expect(authenticated_user).to eq user
end
```

## Deployment

To deploy this app to a live system, we would recommend using heroku.

## Built With

* [Bootstrap](https://startbootstrap.com/template-overviews/business-casual/) - The bootstrap framework used

## Authors

* **Amanda Bater** - (https://github.com/ajbater)
* **Chris Cooper** - (https://github.com/cjcoops)
* **Keomony Khun** - (https://github.com/keomony)
* **Bryony Watson** - (https://github.com/bryonywatson1)
