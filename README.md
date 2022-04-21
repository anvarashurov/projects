# Auth Project

## Features: 

* Sign up
* Login (CSV data is stored in DB view helper methods)
* Logout
* Prevent from visiting unintended routes (e.g. should not show login-form when logged-in)
* Error (Incorrect username/password, username already exists, warn from submitting empty form, etc)

## Tech:
* Ruby on Rails project (Ruby v 2.5.1)
* Postgres for DB
* Utilized Ruby's CSV Api to read data into Ruby model and persist it
* Used Active Record within Rails framework to perform CRUD operations with data (DB)

## More features can be added ...
* We can allow each user to upload their favorite photo as their wallpaper (Image can be stored in AWS S3 or in DB via Active Storage Blobs)
* We can allow users to update their info (straightforward form + Users.update method (which is already implemented, just missing the form in HomePage)

![landing_page](https://user-images.githubusercontent.com/51003447/164459027-c599bab7-8ae4-4689-a5f8-5396e55cf515.png)
![errors_handling](https://user-images.githubusercontent.com/51003447/164459034-d15e5ad6-f658-41f3-885b-4f26b64b48da.png)
![logic](https://user-images.githubusercontent.com/51003447/164459041-0e99acae-cba6-4873-89e5-3a64e3b68b10.png)
![more-logic](https://user-images.githubusercontent.com/51003447/164460998-7adb9ff2-f607-4c4b-9a9c-7022f3b94b88.png)
