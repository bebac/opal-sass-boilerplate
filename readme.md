Opal/Sass Boilerplate
=====================

Boilerplate code to build a static Opal application with Sass based stylesheet.

Here is how to use it with Kemal.

```sh
crystal init app awsome-web-app; cd awsome-web-app
```

Edit awsome-web-app.cr

```cr
require "./kemal-test/*"
require "kemal"

# Matches GET "http://host:port/"
get "/" do |env|
  env.redirect "/index.html"
end

Kemal.run
```

Then clone this repo

```sh
git clone https://github.com/bebac/opal-sass-boilerplate.git opal; cd opal
```

Install all dependencies

```sh
bundle install
```

Build opal app

```sh
bundle exec rake
```

Or use guard to rebuild on changes

```sh
bundle exec guard
```
