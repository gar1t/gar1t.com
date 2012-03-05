# -*- coding: utf-8 -*-

site.url = "http://gar1t.com"

blog = controllers.blog
blog.enabled = True
blog.path = "/blog"
blog.name = "Sharding /dev/null"
blog.description = "Ideas so important they're worthy of a blog!"
blog.timezone = "US/Central"
blog.post_default_filters = {
    "md": "syntax_highlight, markdown, smartypants",
    "html": "syntax_highlight"
}
blog.disqus.enabled = True
blog.disqus.name = "shardingdevnull"
