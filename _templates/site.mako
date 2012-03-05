<%inherit file="base.mako" />
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN"
    "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html>
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    ${self.head()}
    <link rel="stylesheet" type="text/css" href="http://yui.yahooapis.com/combo?3.4.1/build/cssgrids/cssgrids-min.css&3.4.1/build/cssfonts/cssfonts-min.css&3.4.1/build/cssbase/cssbase-min.css"/>
    <link rel="stylesheet" type="text/css" href="/css/site.css">
<script type="text/javascript">

  var _gaq = _gaq || [];
  _gaq.push(['_setAccount', 'UA-24515034-2']);
  _gaq.push(['_trackPageview']);

  (function() {
    var ga = document.createElement('script'); ga.type = 'text/javascript';
    ga.async = true;
    ga.src = ('https:' == document.location.protocol ? 'https://ssl' :
    'http://www') + '.google-analytics.com/ga.js';
    var s = document.getElementsByTagName('script')[0];
    s.parentNode.insertBefore(ga, s);
  })();

</script>
  </head>
  <body>
    <div id="content" class="yui3-u-1">
      ${self.header()}
      <div id="main_block">
        <div id="prose_block">
          ${next.body()}
        </div><!-- End Prose Block -->
      </div><!-- End Main Block -->
      <div id="footer">
        ${self.footer()}
      </div> <!-- End Footer -->
    </div> <!-- End Content -->
  </body>
</html>
<%def name="head()">
  <%include file="head.mako" />
</%def>
<%def name="header()">
  <%include file="header.mako" />
</%def>
<%def name="footer()">
  <%include file="footer.mako" />
</%def>
