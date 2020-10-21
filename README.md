MORDCRY

Basic instructions to run the Mordcry App:

Will need to initally run bundle install to make sure all gemfiles are installed correctly.
Run rails db:migrate, and rails db:reset to make sure all seeds are initiated correctly
Will need to create a .env file, and make sure to add google client_id and client_secret via:
- Go to 'https://console.developers.google.com'
- Select your project.
- Go to Credentials, then select the "OAuth consent screen" tab on top, and provide an 'EMAIL ADDRESS' and a 'PRODUCT NAME'
- Wait 10 minutes for changes to take effect.

- Should you wish email to be passed from the site for forgotten passwords you will need to add a gmail username and password to the .env file

Run rails s to start server

Enjoy!

Another option is check it out on Heroku! https://mordcry.herokuapp.com/
