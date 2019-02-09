# Stimulus generator for rails

This is generator for Stimulus on Rails application with Webpacker.

## Installation

Add to your Gemfile:

```ruby
gem 'stimulus-generator-rails'
```

Add this code to your webpacker's entrypoint javascript file:

```javascript
import { Application } from "stimulus"
import { definitionsFromContext } from "stimulus/webpack-helpers"

const application = Application.start()
const context = require.context("../javascripts/controllers", true, /\.js$/)
application.load(definitionsFromContext(context))
```

### Attention

This generator will create javascript and stylesheet into webpacker's `source_entry_path/../javascripts/controllers` and `source_entry_path/../stylesheets`.
So if you set `source_entry_path` `app/webpacker/entrypoint`, you will see file structure like this:

```
app/webpacker
├── entrypoint
│   └── application.js
├── images
├── javascripts
│   └── controllers
│       └── books
│           └── index_controller.js
└── stylesheets
    └── books.scss
```

## References

- [rails/jbuilder: Jbuilder: generate JSON objects with a Builder-style DSL](https://github.com/rails/jbuilder)
- [Rails::Generators::TestCase](https://edgeapi.rubyonrails.org/classes/Rails/Generators/TestCase.html)
- [ruby - Rake delete files task - Stack Overflow](https://stackoverflow.com/questions/8812264/rake-delete-files-task#8813875)
- [require - Is there a pluralize function in Ruby NOT Rails? - Stack Overflow](https://stackoverflow.com/questions/2446156/is-there-a-pluralize-function-in-ruby-not-rails#2453553)
- [Make your own gem - RubyGems Guides](https://guides.rubygems.org/make-your-own-gem/)
