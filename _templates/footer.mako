<p id="credits">
Copyright &copy; 2012 Garrett Smith |
<a href="${bf.util.site_path_helper(bf.config.blog.path,'feed')}">RSS</a> |
Powered by <a href="http://www.blogofile.com">Blogofile</a>

% if bf.config.blog.disqus.enabled:
and <a href="http://${bf.config.blog.disqus.name}.disqus.com/latest.rss">Comments</a>
% endif
<br>
</p>
% if bf.config.blog.disqus.enabled:
<script type="text/javascript">
    var disqus_shortname = '${bf.config.blog.disqus.name}';
    (function() {
        var dsq = document.createElement('script');
	dsq.type = 'text/javascript'; dsq.async = true;
        dsq.src = 'http://' + disqus_shortname + '.disqus.com/embed.js';
        (document.getElementsByTagName('head')[0] ||
	 document.getElementsByTagName('body')[0]).appendChild(dsq);
    })();
</script>
</script>
% endif
