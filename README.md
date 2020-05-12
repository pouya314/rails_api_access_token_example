Undo/Redo a specific migration:
- rails db:migrate:down VERSION=20200224051806
- rails db:migrate:up VERSION=20200224053320

# Commands
rails g resource user email password_digest
rails db:migrate
rails g controller sessions create
rails g model api_key user:references access_token:string expires_at:datetime
rails db:migrate

# Postman calls
GET http://127.0.0.1:3000/sessions/create
Body Tab -> form-data radio button -> the following key/value pairs:
- email: xxx
- password: xxx
If successful, will get a access_token back in the response body.
