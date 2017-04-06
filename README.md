# Breakfast Cereal Showdown

## Key Topics for the Week
The key things to make sure you have a good understanding of are as follows:
* ActiveRecord Basics
  * Migrations
  * Schema
* ActiveRecord Validations
  * Database Validations
  * Model Validations
* ActiveRecord Associations
  * One-to-many
  * Many-to-many
  * Through Relationships
* ActiveRecord in Pry/Irb
  * Adding records to your database from pry/irb
  * Debugging in pry/irb

## Create a Cereal Model
This model should have have a name, sugar, and description field. These all
must be required and sugar should be an integer.

## Create a User Model
This is going to be a very basic user model with a require first and last name.

## Create an association
Create a model that will allow users to leave a review of many cereals.

## Pry Practice
Practice making records and calling the associations in a Pry session.



####### Copy of the Command Line Below!! ########
Last login: Thu Apr  6 11:24:10 on ttys001
➜  ~ challenges
➜  challenges week-five
➜  week-five git clone https://github.com/michaelgt04/breakfast-cereal-showdown.git
Cloning into 'breakfast-cereal-showdown'...
remote: Counting objects: 20, done.
remote: Total 20 (delta 0), reused 0 (delta 0), pack-reused 20
Unpacking objects: 100% (20/20), done.
➜  week-five breakfast-cereal-showdown/
➜  breakfast-cereal-showdown git:(master) ls
Gemfile           Rakefile          package.json      webpack.config.js
Gemfile.lock      config            public
README.md         npm-debug.log     server.rb
➜  breakfast-cereal-showdown git:(master) atom .
➜  breakfast-cereal-showdown git:(master) bundle
Using rake 12.0.0
Using concurrent-ruby 1.0.3
Using i18n 0.7.0
Using minitest 5.10.1
Using thread_safe 0.3.5
Using arel 7.1.4
Using coderay 1.1.1
Using method_source 0.8.2
Using pg 0.19.0
Using slop 3.6.0
Using rack 1.6.4
Using tilt 2.0.4
Using bundler 1.14.6
Using tzinfo 1.2.2
Using pry 0.10.4
Using rack-protection 1.5.3
Using activesupport 5.0.0.1
Using sinatra 1.4.7
Using activemodel 5.0.0.1
Using activerecord 5.0.0.1
Using sinatra-activerecord 2.0.11
Bundle complete! 5 Gemfile dependencies, 21 gems now installed.
Use `bundle show [gemname]` to see where a bundled gem is installed.
➜  breakfast-cereal-showdown git:(master) ✗ rake -T
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
rake db:create              # Creates the database from DATABASE_URL or config/d...
rake db:create_migration    # Create a migration (parameters: NAME, VERSION)
rake db:drop                # Drops the database from DATABASE_URL or config/dat...
rake db:environment:set     # Set the environment value for the database
rake db:fixtures:load       # Loads fixtures into the current environment's data...
rake db:migrate             # Migrate the database (options: VERSION=x, VERBOSE=...
rake db:migrate:status      # Display status of migrations
rake db:rollback            # Rolls the schema back to the previous version (spe...
rake db:schema:cache:clear  # Clears a db/schema_cache.dump file
rake db:schema:cache:dump   # Creates a db/schema_cache.dump file
rake db:schema:dump         # Creates a db/schema.rb file that is portable again...
rake db:schema:load         # Loads a schema.rb file into the database
rake db:seed                # Loads the seed data from db/seeds.rb
rake db:setup               # Creates the database, loads the schema, and initia...
rake db:structure:dump      # Dumps the database structure to db/structure.sql
rake db:structure:load      # Recreates the databases from the structure.sql file
rake db:version             # Retrieves the current schema version number
➜  breakfast-cereal-showdown git:(master) ✗ rake db:create
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
rake aborted!
Don't know how to build task 'db.create' (see --tasks)
/Users/frankiepancakes/.gem/ruby/2.3.3/gems/rake-12.0.0/exe/rake:27:in `<top (required)>'
(See full trace by running task with --trace)
➜  breakfast-cereal-showdown git:(master) ✗ rake db:create
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
Created database 'breakfast-cereal-battle_development'
Created database 'breakfast-cereal-battle_test'
➜  breakfast-cereal-showdown git:(master) ✗ rake db:create_migration NAME=create_cereals
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
db/migrate/20170406191554_create_cereals.rb

➜  breakfast-cereal-showdown git:(master) ✗ rake db:migrate && rake db:rollback && rake db:migrate
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406191554 CreateCereals: migrating ====================================
-- create_table(:cereals)
   -> 0.0372s
== 20170406191554 CreateCereals: migrated (0.0374s) ===========================

WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406191554 CreateCereals: reverting ====================================
-- drop_table(:cereals)
   -> 0.0300s
== 20170406191554 CreateCereals: reverted (0.0333s) ===========================

WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406191554 CreateCereals: migrating ====================================
-- create_table(:cereals)
   -> 0.0225s
== 20170406191554 CreateCereals: migrated (0.0228s) ===========================

➜  breakfast-cereal-showdown git:(master) ✗ pry -r './server.rb'
[1] pry(main)> Cereal.first
D, [2017-04-06T15:20:10.816880 #10536] DEBUG -- :   Cereal Load (0.7ms)  SELECT  "cereals".* FROM "cereals" ORDER BY "cereals"."id" ASC LIMIT $1  [["LIMIT", 1]]
=> nil
[2] pry(main)> Cereal
=> Cereal(id: integer, name: string, description: text, sugar_content: integer, created_at: datetime, updated_at: datetime)
[3] pry(main)> Cereal.create!(name: 'Fruity Pebbles', description: "WAAAAAAY too gross", sugar_content: 100)
D, [2017-04-06T15:22:45.381708 #10536] DEBUG -- :    (0.3ms)  BEGIN
D, [2017-04-06T15:22:45.385832 #10536] DEBUG -- :   SQL (1.8ms)  INSERT INTO "cereals" ("name", "description", "sugar_content", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "Fruity Pebbles"], ["description", "WAAAAAAY too gross"], ["sugar_content", 100], ["created_at", 2017-04-06 19:22:45 UTC], ["updated_at", 2017-04-06 19:22:45 UTC]]
D, [2017-04-06T15:22:45.387424 #10536] DEBUG -- :    (1.1ms)  COMMIT
=> #<Cereal:0x007ff861aa0ee0
id: 1,
name: "Fruity Pebbles",
description: "WAAAAAAY too gross",
sugar_content: 100,
created_at: 2017-04-06 19:22:45 UTC,
updated_at: 2017-04-06 19:22:45 UTC>
[4] pry(main)> Cereal.create!(name: "Life", description: "Delicious, not too sweet, and also healthy", sugar_content: 60)
D, [2017-04-06T15:23:47.989473 #10536] DEBUG -- :    (0.3ms)  BEGIN
D, [2017-04-06T15:23:47.991291 #10536] DEBUG -- :   SQL (0.6ms)  INSERT INTO "cereals" ("name", "description", "sugar_content", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["name", "Life"], ["description", "Delicious, not too sweet, and also healthy"], ["sugar_content", 60], ["created_at", 2017-04-06 19:23:47 UTC], ["updated_at", 2017-04-06 19:23:47 UTC]]
D, [2017-04-06T15:23:47.997485 #10536] DEBUG -- :    (5.9ms)  COMMIT
=> #<Cereal:0x007ff86238b758
id: 2,
name: "Life",
description: "Delicious, not too sweet, and also healthy",
sugar_content: 60,
created_at: 2017-04-06 19:23:47 UTC,
updated_at: 2017-04-06 19:23:47 UTC>
[5] pry(main)> exit
➜  breakfast-cereal-showdown git:(master) ✗ rake db:create_migration NAME=create_users
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
db/migrate/20170406192540_create_users.rb
➜  breakfast-cereal-showdown git:(master) ✗ rake db:migrate && rake db:rollback && rake db:migrate
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406192540 CreateUsers: migrating ======================================
-- create_table(:users)
   -> 0.0255s
== 20170406192540 CreateUsers: migrated (0.0256s) =============================

WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406192540 CreateUsers: reverting ======================================
-- drop_table(:users)
   -> 0.0108s
== 20170406192540 CreateUsers: reverted (0.0161s) =============================

WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406192540 CreateUsers: migrating ======================================
-- create_table(:users)
   -> 0.0172s
== 20170406192540 CreateUsers: migrated (0.0174s) =============================

➜  breakfast-cereal-showdown git:(master) ✗ pry -r './server.rb'
[1] pry(main)> User.first
D, [2017-04-06T15:27:08.561907 #10877] DEBUG -- :   User Load (0.9ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 1]]
=> nil
[2] pry(main)> User
=> User(id: integer, first_name: string, last_name: string, created_at: datetime, updated_at: datetime)
[3] pry(main)> User.create!(first_name: "Jerry", last_name: "Garcia")
D, [2017-04-06T15:27:45.339640 #10877] DEBUG -- :    (0.3ms)  BEGIN
D, [2017-04-06T15:27:45.350392 #10877] DEBUG -- :   SQL (9.0ms)  INSERT INTO "users" ("first_name", "last_name", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["first_name", "Jerry"], ["last_name", "Garcia"], ["created_at", 2017-04-06 19:27:45 UTC], ["updated_at", 2017-04-06 19:27:45 UTC]]
D, [2017-04-06T15:27:45.351961 #10877] DEBUG -- :    (0.9ms)  COMMIT
=> #<User:0x007f9adfaa0dd0
id: 1,
first_name: "Jerry",
last_name: "Garcia",
created_at: 2017-04-06 19:27:45 UTC,
updated_at: 2017-04-06 19:27:45 UTC>
[4] pry(main)> User.create!(first_name: "Jerry", last_name: "Seinfeld")
D, [2017-04-06T15:28:06.480407 #10877] DEBUG -- :    (0.3ms)  BEGIN
D, [2017-04-06T15:28:06.481989 #10877] DEBUG -- :   SQL (0.5ms)  INSERT INTO "users" ("first_name", "last_name", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["first_name", "Jerry"], ["last_name", "Seinfeld"], ["created_at", 2017-04-06 19:28:06 UTC], ["updated_at", 2017-04-06 19:28:06 UTC]]
D, [2017-04-06T15:28:06.482861 #10877] DEBUG -- :    (0.5ms)  COMMIT
=> #<User:0x007f9adfa02950
id: 2,
first_name: "Jerry",
last_name: "Seinfeld",
created_at: 2017-04-06 19:28:06 UTC,
updated_at: 2017-04-06 19:28:06 UTC>
[5] pry(main)> User.create!(first_name: "Jerry", last_name: "Springer")
D, [2017-04-06T15:28:31.526252 #10877] DEBUG -- :    (0.2ms)  BEGIN
D, [2017-04-06T15:28:31.527717 #10877] DEBUG -- :   SQL (0.5ms)  INSERT INTO "users" ("first_name", "last_name", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["first_name", "Jerry"], ["last_name", "Springer"], ["created_at", 2017-04-06 19:28:31 UTC], ["updated_at", 2017-04-06 19:28:31 UTC]]
D, [2017-04-06T15:28:31.536035 #10877] DEBUG -- :    (8.0ms)  COMMIT
=> #<User:0x007f9adf989028
id: 3,
first_name: "Jerry",
last_name: "Springer",
created_at: 2017-04-06 19:28:31 UTC,
updated_at: 2017-04-06 19:28:31 UTC>
[6] pry(main)> User.create!(first_name: "Jerry", last_name: "Bob")
D, [2017-04-06T15:28:38.744191 #10877] DEBUG -- :    (0.3ms)  BEGIN
D, [2017-04-06T15:28:38.745717 #10877] DEBUG -- :   SQL (0.6ms)  INSERT INTO "users" ("first_name", "last_name", "created_at", "updated_at") VALUES ($1, $2, $3, $4) RETURNING "id"  [["first_name", "Jerry"], ["last_name", "Bob"], ["created_at", 2017-04-06 19:28:38 UTC], ["updated_at", 2017-04-06 19:28:38 UTC]]
D, [2017-04-06T15:28:38.756073 #10877] DEBUG -- :    (9.8ms)  COMMIT
=> #<User:0x007f9ade892850
id: 4,
first_name: "Jerry",
last_name: "Bob",
created_at: 2017-04-06 19:28:38 UTC,
updated_at: 2017-04-06 19:28:38 UTC>
[7] pry(main)> User.fourth
D, [2017-04-06T15:28:45.108211 #10877] DEBUG -- :   User Load (0.4ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1 OFFSET $2  [["LIMIT", 1], ["OFFSET", 3]]
=> #<User:0x007f9adf2a51d0
id: 4,
first_name: "Jerry",
last_name: "Bob",
created_at: 2017-04-06 19:28:38 UTC,
updated_at: 2017-04-06 19:28:38 UTC>
[8] pry(main)> exit
➜  breakfast-cereal-showdown git:(master) ✗ rake db:create_migration NAME=create_reviews
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
db/migrate/20170406193625_create_reviews.rb
➜  breakfast-cereal-showdown git:(master) ✗ rake db:migrate && rake db:rollback && rake db:migrate
WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406193625 CreateReviews: migrating ====================================
-- create_table(:reviews)
   -> 0.0480s
== 20170406193625 CreateReviews: migrated (0.0482s) ===========================

WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406193625 CreateReviews: reverting ====================================
-- drop_table(:reviews)
   -> 0.0038s
== 20170406193625 CreateReviews: reverted (0.0070s) ===========================

WARN: Unresolved specs during Gem::Specification.reset:
      minitest (~> 5.1)
WARN: Clearing out unresolved specs.
Please report a bug if this causes problems.
== 20170406193625 CreateReviews: migrating ====================================
-- create_table(:reviews)
   -> 0.0493s
== 20170406193625 CreateReviews: migrated (0.0495s) ===========================

➜  breakfast-cereal-showdown git:(master) ✗ pry -r './server.rb'
[1] pry(main)> Review.first
D, [2017-04-06T15:39:30.892778 #11319] DEBUG -- :   Review Load (0.8ms)  SELECT  "reviews".* FROM "reviews" ORDER BY "reviews"."id" ASC LIMIT $1  [["LIMIT", 1]]
=> nil
[2] pry(main)> Review
=> Review(id: integer, body: string, cereal_id: integer, user_id: integer, created_at: datetime, updated_at: datetime)
[3] pry(main)> Review.create!(cereal: Cereal.first, user: User.first, body: "great crunchy squares")
D, [2017-04-06T15:42:00.847555 #11319] DEBUG -- :   Cereal Load (0.6ms)  SELECT  "cereals".* FROM "cereals" ORDER BY "cereals"."id" ASC LIMIT $1  [["LIMIT", 1]]
D, [2017-04-06T15:42:00.862554 #11319] DEBUG -- :   User Load (0.5ms)  SELECT  "users".* FROM "users" ORDER BY "users"."id" ASC LIMIT $1  [["LIMIT", 1]]
D, [2017-04-06T15:42:00.880885 #11319] DEBUG -- :    (0.3ms)  BEGIN
D, [2017-04-06T15:42:00.883797 #11319] DEBUG -- :   SQL (1.1ms)  INSERT INTO "reviews" ("body", "cereal_id", "user_id", "created_at", "updated_at") VALUES ($1, $2, $3, $4, $5) RETURNING "id"  [["body", "great crunchy squares"], ["cereal_id", 1], ["user_id", 1], ["created_at", 2017-04-06 19:42:00 UTC], ["updated_at", 2017-04-06 19:42:00 UTC]]
D, [2017-04-06T15:42:00.890602 #11319] DEBUG -- :    (6.2ms)  COMMIT
=> #<Review:0x007f8714876a98
id: 1,
body: "great crunchy squares",
cereal_id: 1,
user_id: 1,
created_at: 2017-04-06 19:42:00 UTC,
updated_at: 2017-04-06 19:42:00 UTC>
[4] pry(main)>
