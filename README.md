# Jungle

A mini e-commerce application built with Rails 4.2 for purposes of teaching Rails by example.

## Additional Steps for Apple M1 Machines

1. Make sure that you are runnning Ruby 2.6.6 (`ruby -v`)
1. Install ImageMagick `brew install imagemagick imagemagick@6 --build-from-source`
2. Remove Gemfile.lock
3. Replace Gemfile with version provided [here](https://gist.githubusercontent.com/FrancisBourgouin/831795ae12c4704687a0c2496d91a727/raw/ce8e2104f725f43e56650d404169c7b11c33a5c5/Gemfile)

## Setup

1. Run `bundle install` to install dependencies
2. Create `config/database.yml` by copying `config/database.example.yml`
3. Create `config/secrets.yml` by copying `config/secrets.example.yml`
4. Run `bin/rake db:reset` to create, load and seed db
5. Create .env file based on .env.example
6. Sign up for a Stripe account
7. Put Stripe (test) keys into appropriate .env vars
8. Run `bin/rails s -b 0.0.0.0` to start the server

## Stripe Testing

Use Credit Card # 4111 1111 1111 1111 for testing success scenarios.

More information in their docs: <https://stripe.com/docs/testing#cards>

## Dependencies

* Rails 4.2 [Rails Guide](http://guides.rubyonrails.org/v4.2/)
* PostgreSQL 9.x
* Stripe

## Screenshots

![Screenshot from 2021-06-02 20-12-38](https://user-images.githubusercontent.com/65080348/120576106-7734bb80-c3df-11eb-940c-ff22cb3b89ac.png)
Products added to the cart
---------------------------
![Screenshot from 2021-06-02 20-12-17](https://user-images.githubusercontent.com/65080348/120576107-7734bb80-c3df-11eb-93fe-ead390fe7108.png)
Details for the products could be seen 
---------------------------------------
![Screenshot from 2021-06-02 20-18-14](https://user-images.githubusercontent.com/65080348/120576255-b6630c80-c3df-11eb-973b-a8218f8dad41.png)
Admin page for adding/deleting categories and products
---------------------------------------
![Screenshot from 2021-06-02 20-12-47](https://user-images.githubusercontent.com/65080348/120576105-769c2500-c3df-11eb-9a67-dabcfde04e70.png)
Items added to cart could be seen here
---------------------------------------
![Screenshot from 2021-06-02 20-13-17](https://user-images.githubusercontent.com/65080348/120576101-769c2500-c3df-11eb-85bc-74187cf9d8f2.png)
Payment gateway
---------------------------------------
![Screenshot from 2021-06-02 20-13-28](https://user-images.githubusercontent.com/65080348/120576100-76038e80-c3df-11eb-8f87-54995a3d6634.png)
Summary after payment is done
---------------------------------------


