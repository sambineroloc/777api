LIBER 777 Queryable API

Setup
  Needs
    - Ruby v2.5.1
    - Rails v5.2.0
    - Postman/ Curl/ some other way to make get requests
    - Postgres database
    - Rspec

  Steps
    1. Install the programs detailed above
    2. git clone this repository
    3. cd into the directory
    4. run the following from the command line:
      - bundle install
      - rails db:create && rails db:migrate
      - rake setup:all (this one may take a minute)
      - rspec
    5. If rspec goes green, you're good to go!

  Usage
    1. run 'rails s' from the command line
    2. use your chosen request program to query localhost:3000
      - /columns will return all columns
      - /columns/1 will return this first column
        - if you look in app/public/assets/column_and_row_map.json, you can see
        which query number will return which column
      - columns/1?row=4 will return the fourth row of the first column

      - /rows, /rows/1, and /rows/1?column=4 will work in the same manner, and
      query data can be found in the same location

  Notes
    - This is my first attempt at this, and I've only posted the link in
    r/occult so far. If you have any feedback or suggestions, please let me
    know. The feedback is extremely welcome!
    - Shout out to Github user aj07mm for the spectacular JSON formatted LIBER
    777 which allowed this to be so quick. 
