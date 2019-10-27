---
layout: page
title: About
---

# Darlog blog theme

Darlog theme is minimalistic dark theme and is suitable for any kind of blogging. Theme is made not without the help of [Hacker-Blog](https://github.com/tocttou/hacker-blog) one, thus anything that is true for it
is also true for this one so I suggest you go there and checkout the desciption for more details.

Demo: https://darlog-theme.netlify.com/

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "darlog"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
theme: darlog
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install darlog

Then add the gems theme needs:

    gem install jekyll-seo-tag
    gem install jekyll-paginate
    gem install jekyll-sitemap

Finally run it with live reload and stat writing your awesome blog

    jekyll serve --livereload

## Usage

Use bundle show minima to see where the theme is located and copy all files
you need to edit for your needs.

    $ bundle show minima


## Contributing

Bug reports and pull requests are welcome on GitHub at [theme page](https://github.com/arxero/darlog). This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](http://contributor-covenant.org) code of conduct.

## Customizing

### Configuration variables

Edit the `_config.yml` file and set the following variables:

```yml
title: [The title of your blog]
description: [A short description of your blog's purpose]
author:
  name: [Your name]
  email: [Your email address]
  url: [URL of your website]

baseurl: [The base url for this blog.]

paginate: [Number of posts in one paginated section (default: 3)]
owner: [Your name]
year: [Current Year]
```

*Note: All links in the site are prepended with `baseurl`. Default `baseurl` is `/`. Any other baseurl can be setup like `baseurl: /hacker-blog`, which makes the site available at `http://domain.name/hacker-blog`.*

Additionally, you may choose to set the following optional variables:

```yml
google_analytics: [Your Google Analytics tracking ID]
```

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

