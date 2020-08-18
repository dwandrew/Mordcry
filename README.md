# README

Basic instructions to run the Mordcry App:

Will need to initally run bundle install to make sure all gemfiles are installed correctly.
Run rails db:migrate, and rails db:reset to make sure all seeds are initiated correctly
Will need to create a .env file, and make sure to add google client_id and client_secret via:
- Go to 'https://console.developers.google.com'
- Select your project.
- Go to Credentials, then select the "OAuth consent screen" tab on top, and provide an 'EMAIL ADDRESS' and a 'PRODUCT NAME'
- Wait 10 minutes for changes to take effect.

Run rails s to start server