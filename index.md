---
layout: default
---
# Sarah Chris Recipe site!

# Categories
{% assign cats = site.categories | map: 'title' %}
<ul>
  {% for cat in cats %}
    <li><a href='/category/{{ cat | downcase | replace: " ", "-" }}'>{{ cat | capitalize }}</a></li>
  {% endfor %}
</ul>
