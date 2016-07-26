# Attache
A web application built with Rails to design, manage, and export reports or other web content as a self-contained static HTML webpage or other offline accessible formats such as PDF.

___
### System Dependencies
  - Ruby ~2.3.x
  - Node ~6.x
  - Bundle Ruby Gem (`gem install bundle`)


## Install
  ```shell
  npm install
  bundle install
  ```

## Configure
* Database
  - if using default config and sqlite3 as a database create it
    `sqlite3 db/development.sqlite`
    or for production
    `sqlite3 db/production.sqlite`
    otherwise modify `config/database.yml` as needed
  - load database schema
    `rake db:schema:load`

* S3 Integration (optional)
    ```shell
    export AWS_S3_BUCKET=aws_bucket_name
    export AWS_KEY_ID=xxxxxxxxxxx
    export AWS_SECRET=xxxxxxxxxxx
    ```
* Rails Environment
  - rails env var can be set in many ways, or simply in shell as
    `export RAILS_ENV=production`

## Run
* Before running in production precompile assets with
    ```shell
    rake assets:precompile
    rake non_digested
    ```


Run with `rails server` or `rails server -d` to run deamonize

Browse to `http://localhost:3000` (or set up a proxy with nginx)
