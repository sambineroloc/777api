LIBER 777 Queryable API

1. Setup  
   - Needs  
   - Ruby v2.5.1  
   - Rails v5.2.0  
   - Postman/ Curl/ some other way to make get requests  
   - Postgres database  
   - Rspec  

2. Steps   
   1. git clone this repository  
   2. cd into the directory  
   3. Install the programs detailed above
   4. run the following from the command line:  
      - bundle install  
      - rails db:create && rails db:migrate  
      - rake setup:all (this one may take a minute)  
      - rspec (also might take a minute)
   5. If rspec goes green, you're good to go!  
   6. *Extra Step* If you haven't used the API in a while, run the following:
      - git pull
      - bundle install

3. Usage  
   1. run 'rails s' from the command line  
   2. use your chosen request program to query localhost:3000  
      - /columns will return all columns  
      - /columns/1 will return this first column  
      - if you look in app/public/assets/column_and_row_map.json, you can see which query number will return which column  
      - columns/1?row=4 will return the fourth row of the first column  
      - /rows, /rows/1, and /rows/1?column=4 will work in the same manner, and query data can be found in the same location  
      - *Example columns query* localhost:3000/columns/14?row=4
      - *Example rows query* localhost:3000/rows/3

4. Notes  
      - This is my first attempt at this, and I've only posted the link in r/occult so far. If you have any feedback or suggestions, please let me know. The feedback is extremely welcome!  
      - Shout out to Github user aj07mm for the spectacular JSON formatted LIBER 777 which allowed this to be up and running so quick.  
