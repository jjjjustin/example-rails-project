# Example Rails Programming Task

**Thank you for considering the [Web / Software Developer position](http://cropquest.hrmdirect.com/employment/job-opening.php?req=253865&&&nohd#job) based out of Dodge City, KS with [Crop Quest, Inc.](http://www.cropquest.com)!** 

The programming projects we work on will primarily be written in Ruby and use the Ruby on Rails framework. While proficiency in Ruby on Rails is not required, in order to be considered for the position, you must be able to demonstrate that you are able to create a basic Rails application.

If you have previous experience with Rails or other web application frameworks, you should be able to implement this application pretty quickly. If you don't have any previous experience with MVC web application frameworks, you will probably need to spend more time getting up to speed.

### Prerequisites

- You will need to have a free GitHub account, and have [Git](https://git-scm.com/), [PostgreSQL](http://www.postgresql.org/), [Ruby](https://www.ruby-lang.org/en/), and [Ruby on Rails](http://www.rubyonrails.org/) installed to complete this task.
  - **Linux**: Here is our [guide for setting up a Rails development environment](https://gist.github.com/tirith/e83f6ddcc22dc1cb5ddd) on Ubuntu 14.04 LTS and newer releases (production steps can be skipped).
  - **OS X**: If you use a Mac, we recommend installing Git using [homebrew](http://brew.sh/), PostgreSQL with [Postgres.app](http://postgresapp.com/), and Ruby with [rbenv](https://github.com/sstephenson/rbenv) (instead of using the system installed version of Ruby).
  - **Windows**: Unfortunately Windows is not a viable Ruby development environment. If you don't have a Linux or OS X system to use, you will need to install Oracle Virtual Box and create an Ubuntu Linux VM, and then follow the Linux setup guide above.

### Guidelines

- Submit clean, concise, and readable code
- Follow the Ruby on Rails naming conventions, [guidelines here](http://guides.rubyonrails.org/active_record_basics.html#naming-conventions)
- You can use and integrate ruby gems to help addon functionality like authentication or CSS frameworks.

If this is your first time developing with Ruby on Rails (don't sweat it!), we recommend going through the [Rails Guides](http://guides.rubyonrails.org/index.html), and especially the Getting Started section, to quickly get up to speed with Rails. 

## Task

- Fork this repository (if you don't know how to do that, Google is your friend).
- Create a *source* directory.
- In the *source* directory, scaffold a Rails 4 web app that uses a postgresql database that will be a simple inventory management system.
- **Resources**
  - **TIP**: You can use the Rails scaffolding generator to help you quickly create boilerplate code for resources.
  - Create a **User** resource that contains attributes for first_name (string), last_name (string), email (string), address (string), city (string), state (string), zip (string)
    - All attributes are required, email should be unique for each user who signs up
  - Create an **EquipmentType** resource that contains attributes for name (string) and description (text)
    - name is required 
    - In the seeds file create 5 or more equipment types to populate the equipment types table with default equipment_items since there will be no interface to add or manage them
  - Create an **EquipmentItem** resource that contains attributes for name (string), serial (string), purchase_date (date), comments (text), equipment_type_id (integer), user_id (integer)
    - name, serial, purchase_date, equipment_type_id, and user_id are required
- **Relationships**
  - A user can have many equipment_items
  - An equipment_type can have many equipment_items
  - An equipment_item can only belong to one equipment_type and only belong to one user
- **Authentication**
  - Implement user authentication functionality (sign up, login, logout) for the User resource. This can be done with a ruby gem like [devise](https://github.com/plataformatec/devise).
  - All resources should be protected from unauthenticated users. If an unauthenticated user attempts to access a protected resource, they should be redirected to the login page. 
- **Authorization**
  - A User is allowed to create Equipment Items, and view or edit Equipment Items that belong to them 
  - A User is not allowed to view or edit Equipment Items that do not belong to them
  - A User is not allowed to create, or edit Equipment Types
  - A User is not allowed to view or edit other Users
- **Forms**
  - Forms need to validate based on the rules for each resource above
  - Need a form for user sign up / registration
  - Need a form for logging in
  - Need a form for the user to create / edit equipment items. It will have an equipment type dropdown that lists the equipment types that were seeded in the database for the user to select one. When the form saves, the assocation to the user and to the equipment type need to be set on the equipment item
- **User Interface**
  - Upon logging in, the User should see a dashboard page listing their Equipment Items
    - They need to have button links for viewing, editing, or deleting Equipment Items for each item
- **Bonus Points**
  - Use a front-end framework like bootstrap or foundation to implement a responsive layout
  - Add a global navigation menu with links for edit profile and for logging out
  - Need a form for the user to edit their information (except their email address)

## Once Complete
1. Commit and Push your code to your new repository
2. Send us a pull request when your application is finished, we will review your code and get back to you

We will receive a notification once you have submitted your pull request, but if you need clarification on something in order to complete the project, shoot an email over to dev@cropquest.com.
