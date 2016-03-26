# Light Bootstrap Dashboard Rails Version

Thanks for trying out Light Bootstrap Dashboard (Rails Version)! We promise your rails app will look awesome after install it. You can view live preview [here](http://uiready.io/items/light-bootstrap-dashboard-rails-version/demo).

[![Light Bootstrap Dashboard](https://raw.githubusercontent.com/UiReady/uiready.github.io/master/images/light_bootstrap_dashboard_rails_blog_cover.jpg)](https://uiready.io/items/light-bootstrap-dashboard-rails-version)

## Table of Content

* [Install Preparation](#install-preparation)
* [Installation](#installation)
* [Theme Structure In Rails](#theme-structure-in-rails)
* [Page Generators](#page-generators)
* [Changelog](#changelog)
* [Copyright](#copyright)

## Install Preparation

Recommend install on blank new rails app

Although Light Bootstrap Dashboard (Rails Version) can be installed on your existing rails app, we still recommend you to install it on a blank new rails app first and get familiar how this gem integrate your rails app.

Remove any bootstrap from existing rails app

If you want to integrate existing rails app, please make sure you have remove all the Bootstrap gems such as [twitter-bootstrap-rails](https://github.com/seyhunak/twitter-bootstrap-rails), [bootstrap-rails](https://github.com/anjlab/bootstrap-rails), [bootstrap-sass](https://github.com/twbs/bootstrap-sass), [less-rails-bootstrap](https://github.com/metaskills/less-rails-bootstrap) or any Bootstrap related stylesheets and javascript from your rails app. As Light Bootstrap Dashboard (Rails Version) already contain its own version of Bootstrap.

[Back to top](#table-of-content)

## Installation

1. Create a new rails application from terminal

  ```
  rails new exampleapp
  cd exampleapp
  ```

2. Install light_bootstrap_dashboard gem

  ```
  gem 'light_bootstrap_dashboard', '~> 1.3'
  ```

  Run the following command to install the gem:

  ```
  bundle install
  ```

  Congratulation, Light Bootstrap Dashboard for Rails Version has been installed in your local machine.

3. Run the install generator to integrate Light Bootstrap Dashboard in your rails

  ```
  rails g light_bootstrap_dashboard:install
  ```

  The install generator will created the following layout, css and js files in your app:

  * app/views/layouts/_base.html.erb
  * app/assets/stylesheets/light_bootstrap_dashboard.css
  * app/assets/javascripts/light_bootstrap_dashboard.js

  Also, it added require directive to require light_bootstrap_dashboard.css and light_bootstrap_dashboard.js from following manifest files:

  * app/assets/stylesheets/application.css
  * app/assets/javascripts/application.js

[Back to top](#table-of-content)

## Theme Structure In Rails

Light Bootstrap Dashboard (Rails version) has integrate lot of the rails best practices such as

* integrate nicely with turbolinks enabled
* dynamic load the javascript init scripts
* proper asset pipeline integration

Before we dive in to using Page Generators. Let get familiar how this gem integrate to rails app

First thing first, in order to simplify the file management from your rails app, all the Light Bootstrap Dashboard files are actually located in the gem except the following files for customize purpose:

Light Bootstrap Dashboard files in your rails app folder:

* app/views/layouts/_base.html.erb
* app/assets/stylesheets/light_bootstrap_dashboard.css
* app/assets/javascripts/light_bootstrap_dashboard.js

### _BASE.HTML.ERB

It contain html head and empty body. All other layouts are based on this _base.html.erb layout so that same html head setting can be reuse among different layouts.

There are three yield contents specified in base layout:

```ruby
<%= yield :head %>
<%= yield :features %>
<%= yield :class %>
```

#### <%= yield :head %>

you can specify the custom meta, css style and javascript from the view file to fill in this area. For example, if you want to include some style on index view page only. From your index.html.erb, you can specify:

```ruby
<% content_for :style do %>
<style>
  .somestyle {
  background-color: red;
  }
</style>
<% end %>
```

#### <%= yield :features %>

you can specify the javascript init features you want to invoke from the view file to fill in this area. For example, if you want to add feature1 and feature2 on index view page only. From your index.html.erb, you can specify:

```ruby
<% content_for :features, "feature1 feature2" %>
```

Then add the following init script in light_bootstrap_dashboard.js OR add it to separate js file and require it from light_bootstrap_dashboard.js

```ruby
$(document).on("page:change", function() {
  if ($.inArray('feature1',App.features()) >= 0) {
    Write your feature1 init script here ...
  }
  if ($.inArray('feature2',App.features()) >= 0) {
    Write your feature2 init script here ...
  }
});
```

#### <%= yield :class %>

you can specify the css class name from the view file to fill in this area. For example, if you want to give the class name on index view page only. From your index.html.erb, you can specify:

```ruby
<% content_for :class, "home" %>
```

### LIGHT_BOOTSTRAP_DASHBOARD.CSS

It is the manifest file using sprockets require directives to require all Light Bootstrap Dashboard stylesheet files.


### LIGHT_BOOTSTRAP_DASHBOARD.JS

It is the manifest file using sprockets require directives to require all Light Bootstrap Dashboard javascript files.

[Back to top](#table-of-content)

## Page Generators

Light Bootstrap Dashboard come with the following page generators to help you create the various pages. It's automatically handle all setup such as routes, controllers and views. By the way, all view layout are based on `_base.html.erb` layout, if you want to use different layout, you can specify it in your controller.

### DASHBOARD PAGE GENERATOR

Generate dashboard page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:dashboard_page CONTROLLER ACTION
```

### ICONS PAGE GENERATOR

Generate icons page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:icons_page CONTROLLER ACTION
```

### MAPS PAGE GENERATOR

Generate maps page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:maps_page CONTROLLER ACTION
```

### NOTIFICATIONS PAGE GENERATOR

Generate notifications page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:notifications_page CONTROLLER ACTION
```

### TABLE PAGE GENERATOR

Generate table page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:table_page CONTROLLER ACTION
```

### TEMPLATE PAGE GENERATOR

Generate template page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:template_page CONTROLLER ACTION
```

### TYPOGRAPHY PAGE GENERATOR

Generate typography page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:typography_page CONTROLLER ACTION
```

### UPGRADE PAGE GENERATOR

Generate upgrade page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:upgrade_page CONTROLLER ACTION
```

### USER PAGE GENERATOR

Generate user page view at app/views/CONTROLLER/ACTION

```
rails g light_bootstrap_dashboard:user_page CONTROLLER ACTION
```

[Back to top](#table-of-content)

## Changelog

2016.03.21 - version 1.3.0.0

* First Release for Rails Gem!

[Back to top](#table-of-content)

## Copyright

Design is copyright of [Creative Tim](http://creative-tim.com). Light Bootstrap Dashboard Pro will available for purchase soon. You can get it from [UiReady](https://uiready.io).

[Back to top](#table-of-content)
