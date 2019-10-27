---
layout: page
title: About
permalink: about
---

# Darlog blog theme

Darlog theme is a minimalistic dark theme for Jekyll and is suitable for any kind of blogging. Theme is made not without the help of [Hacker-Blog](https://github.com/tocttou/hacker-blog) one, thus anything that is true for it
is also true for this one so I suggest you go there and checkout the desciption for more details.

[Demo](https://darlog-theme.netlify.com/)


## Presequence
[Ruby](https://jekyllrb.com/docs/)


    jekyll new my-blog


and open your code editor in that folder which would be `my-blog` in this case.

## Installation

Add this line to your Jekyll site's `Gemfile`:

```ruby
gem "darlog", "~> 0.1.1"
```

And add this line to your Jekyll site's `_config.yml`:

```yaml
paginate: 4
```

Change the theme `darlog` in the same `_config.yml`
```yaml
theme: darlog
```

And add the theme plugins in the `Gemfile`, last 3 rows are the theme specific, the first one should be there by default.
```yaml
group :jekyll_plugins do
  gem "jekyll-feed", "~> 0.12"
  gem 'jekyll-seo-tag', '~> 2.6', '>= 2.6.1'
  gem 'jekyll-paginate', '~> 1.1'
  gem 'jekyll-sitemap', '~> 1.3', '>= 1.3.1'
end
```

And then execute:

    bundle


Rename `index.markdown` file to `index.html` and replace the content in it with:

```html
---
layout: default
---



<ul class="posts-container">
  {% for post in paginator.posts %}
  <li class="post">
    <div class="post-title">
      <a href="{{ post.url | prepend: site.baseurl | replace: '//', '/' }}">{{ post.title }}</a>
    </div>
    
    <span class="post-author">{{ post.author}}</span>
    <span class="post-delimiter">•</span>
    <span class="post-date" datetime="{{ post.date | date_to_xmlschema }}">{{ post.date | date_to_string }}</span>

    <p class="post-preview">{{ post.content | strip_html | truncatewords:40 }}</p>
  </li>
  {% endfor %}
</ul>
```

If you get this error `Unable to load the EventMachine C extension; To use the pure-ruby reactor, require 'em/pure_ruby'` use this two commands:

    gem uninstall eventmachine
    gem install eventmachine --platform ruby


Make folder in your root directory with the name of `css` and in it make a file with the name `main.scss` in it paste this:

```scss
---
#
---
@import "style";
```

Make a file in your root directory with the name of `archive.md` and paste
in it:

```html
---
layout: page
title: Archive
---

<section>
  {% if site.posts[0] %}

    {% capture currentyear %}{{ 'now' | date: "%Y" }}{% endcapture %}
    {% capture firstpostyear %}{{ site.posts[0].date | date: '%Y' }}{% endcapture %}
    {% if currentyear == firstpostyear %}
        <h3>This year's posts</h3>
    {% else %}  
        <h3>{{ firstpostyear }}</h3>
    {% endif %}

    {%for post in site.posts %}
      {% unless post.next %}
        <ul>
      {% else %}
        {% capture year %}{{ post.date | date: '%Y' }}{% endcapture %}
        {% capture nyear %}{{ post.next.date | date: '%Y' }}{% endcapture %}
        {% if year != nyear %}
          </ul>
          <h3>{{ post.date | date: '%Y' }}</h3>
          <ul>
        {% endif %}
      {% endunless %}
        <li><time>{{ post.date | date:"%d %b" }} - </time>
          <a href="{{ post.url | prepend: site.baseurl | replace: '//', '/' }}">
            {{ post.title }}
          </a>
        </li>
    {% endfor %}
    </ul>

  {% endif %}
</section>
```

Finally run it with live reload and stat writing your awesome blog

    jekyll serve --livereload

## Additional

Include in your posts head a property for author so you can see the posts author.

```yaml
---
layout: post
title:  "Welcome to Jekyll!"
date:   2019-10-27 18:50:32 +0200
categories: jekyll update
author: Maverick
---
```

Use this command to locate the theme's source files if you need them for any
purpose of editing the theme by your needs.

    bundle show darlog



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

*Note: All links in the site are prepended with `baseurl`. Default `baseurl` is `/`. Any other baseurl can be setup like `baseurl: /darlog`, which makes the site available at `http://domain.name/darlog`.*

Additionally, you may choose to set the following optional variables:

```yml
google_analytics: [Your Google Analytics tracking ID]
```

## License

The theme is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
