
# Makersbnb

This project aimed to replicate Airbnb, providing users with an interface to either rent out spaces or book them.

## USER STORIES

We agreed on a number of user stories to make sure we all had a clear understanding of the requirements for the user

```
As a user
So that I can rent out my space
I want to be able to sign up

As a user
So that I can rent out my space
I need to be able to login

As a user
So that I can end my session
I need to be able to logout

As a user
So that I can rent out my space
I need to be able to add my space with a name

As a user
So that I can give details of my space
I need to be able to give it a description

As a user
So that I can give details of my space
I need to be able to give it a price per night

As a user
So that my property can not be booked when not available
I need to be able to offer a range of dates when the property is available


As a user
So that I can decide which property to choose
I want to see a list of properties

As a user
So that I can request to book a property I like
I want to be able to send a request form to the owner

As a user
So that I can confirm that I want to rent out a requested property
I want to be able to approve requests for my property

As a user
So that I can review request from different users
I want my property to  still be available to request until I have confirmed a booking

As a user
So that I can rent out a few of my properties
I need to be able to list multiple spaces

As a user
So that I can not book a property which is not available
Nights for which a space has already been booked should not be available for me to book that space
```


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
