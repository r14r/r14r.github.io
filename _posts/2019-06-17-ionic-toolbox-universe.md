---
layout: post
title:  "Ionic Toolbox Universe"
date:   2019-06-17 10:00:00
categories: toolbox repositories
tags: toolbox universe
excerpt: Ionic Toolbox Universe
universes:
    - ionic-toolbox 
    - ionic-training
    - ionic-components
    - ionic-directives
    - ionic-pages
    - ionic-pipes
    - ionic-services
    - ionic-starter
    - ionic-templates
    - ionic-playground
    - ionic-team
    - ionic-toolbox-work
    - ionic3-library
    - ionic3-toolbox
    - ionic4-library
    - ionic4-toolbox
    - ionic4-toolbox-work
    - r14r
---

Ionic Toolbox Universes created by [me](https://r14r.github.io)

{% for universe in page.universes %}
<a href="https://{{universe}}.github.io}">{{universe}}</a>|<a href="https://github.com/{{universe}}">Github</a>
{% endfor %}


<div class="grid clearfix">
{% for universe in page.universes %}
    <div class="col-1-2">
        <div class="content">
            <h1><a href="https://{{universe}}.github.io}">{{universe}}</a></h1>
            <div class="entry"><p>{{ post.desc }}</p></div>

            <a href="https://github.com/{{universe}}" class="small-link primary-link" target="_blank">View Project Site <i class="fa fa-external-link"><i></a>
        </div>
    </div>
{% endfor %}
