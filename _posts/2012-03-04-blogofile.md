---
title: Blogofile
date: 2012/03/04 20:47:00
categories: General
---

[Blogofile](http://www.blogofile.com/) is blog software that lets you write
blog posts as plain text files, which are compiled into a web site.

It's enlightened, I think.

It's a hell of a lot easier to get going than WordPress. But far more
importantly, it treats your blog as source code. I'd like more things in life
to be treated like code.

## Background

A week ago I ran an Arch system upgrade that hosed `sshd`. So I had to rebuild
the server. In EC2 that's pretty easy if you're using EBS.

But no one likes that sort of hassle -- here's a trace of my emotional state
changes:

1. *Fucking hell Arch, you can't possibly be serious*
1. *Let's just get this over with*
1. *I'll only rebuild what's absolutely necessary*
1. *Man is it easy to install software with Arch*
1. *There's no way I'm dealing with WordPress again -- I'll find something
   simpler*

Googled "[file based blog](https://www.google.com/search?q=file+based+blog)" --
not much help, but on closer inspection,
[something useful](http://stackoverflow.com/questions/7991735/blog-engine-with-text-html-syntax-and-file-based-input)!

After a relatively painless experience of getting the required dependencies
installed, I was running a stand-alone blog that served content from plain ol'
text files that sat in a plain ol' file system. I used plain ol' Emacs and ran
a build. A little Nginx `proxy_pass` love and I had a sane, cogent blog!

## What's Wrong with WordPress?

Nothing, it's a terrific piece of software. When I used it, I was continually
blow away by it's polish, feature set, and relative ease of use.

But a couple things caused my eye to wander:

* While it's easy to setup relative to a lot of crap out there, WordPress is
  not that easy to setup. I wanted something that I could install as a single
  Arch package and run as a daemon... simple!

* I absolutely *hate* storing text content in a database. I absolutely *hate*
  editing text content in a web based WYSIWYG editor. I want text files. There
  are lots of tools I can use with text files.

I wanted a system where I could open my laptop, hack away on content and then
publish that when I was ready. This is a coding problem. I don't need any other
memes. I just want code and a build process. I know this will work.

*Text files are the lingua franca of information!*

## Missing WordPress, a Little

Okay, WordPress did give me a gorgeous, modern, ultra hip blog with just the
click of a few buttons.

So, I need to dig up some templates, CSS, etc. and make this work
myself. That's not the end of the world -- but it does raise the barrier to
adopt this approach.

That said, it's an easy trade of to make: my "blog" now is a self-contained
directory of text files stored in github! To restore it, I use a git clone
operation. I have a complete history of all changes. If I want to make my life
complicated, I can work on branches for previewing changes and then merge them
into "master".

Whatever, the point is it's code.

## Much Potential With Blogfile

Blogfile is really a web site generator that uses Python, Mako templates and
various markup flavors to generate content. It's a content centric tool that
sits somewhere between a CMS and raw HTML.

To generate content, you register a *controller* with Blogfile. The "blog" is
one type of controller. But it looks pretty easy to create new types.

So I see myself using Blogfile for other content management, assuming this
experiment goes well. In particular, I'd like a place to store my presentation
slides. E.g. use markdown to organize a "slide" that gets turned into HTML that
gets inserted into an [S5](http://meyerweb.com/eric/tools/s5/) presentation.

Ideas:

* Presentation generator (S5)
* List of YouTube videos
* Project web sites (e.g. e2)

## Random Comments

Blogofile follows [Sphinx's](http://sphinx.pocoo.org/) example.

This Blogofile project seems to have slowed or even stalled.

blogofile.com site is
[built with Blogofile](https://github.com/EnigmaCurry/blogofile.com), but it
doesn't make systematic use of markdown for content. E.g. non blog posts are
written in HTML, embedded in Mako templates.

Using [Disqus](http://disqus.com/) to enable comments on a static site is a
great example of separation of concerns and is brilliant! Now if there was only
some way to do this for ad syndication, hmmm...
