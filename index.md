---
layout: default
---

# Categories
{% assign posts = site.recipes | map: 'path' %}
{% assign cats = '' %}
{% for post in posts %}
    {% assign cat = post | remove: '_recipes/' | split: '/' | first %}
    {% assign cats = cats | append: cat | append: ',' %}
{% endfor %}
{% assign cats = cats | split: ',' | uniq %}
<ul>
  {% for cat in cats %}
    <li><a href='/category/{{ cat | downcase }}'>{{ cat | capitalize }}</a></li>
  {% endfor %}
</ul>

# All posts
<div>
  {% for a in site.recipes %}
      <a href='{{ a.url }}'>{{ a.title | capitalize }}</a>
      <br>
  {% endfor %}
</div>

