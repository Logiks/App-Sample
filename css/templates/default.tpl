{$PAGE.DOCTYPE}

<html {$PAGE.HTML_ATTRIBUTES}>
  <head {$PAGE.HEAD_ATTRIBUTES}>
    <!-- start: HEADER -->
    <title>{$PAGE.TITLE}</title>
    <meta name='description' content='{$PAGE.DESCRIPTION}' />
    <meta name='keywords' content='{$PAGE.KEYWORDS}' />
    <meta name='robots' content='{$PAGE.ROBOTS}' />
    <!-- end: HEADER -->
    
    {$PAGE.FAVICON}
    
    <!-- start: META -->
    {pageseometa}
    <!-- end: META -->
	
	{$PAGE.VIEWPORT}
	{$PAGE.CSS}
	{$PAGE.JS_PRELOAD}
	
	{logikscripts}
	
	{hook src='postHTMLHead'}
  </head>
  <body {$PAGE.BODY_CLASS} {$PAGE.BODY_ATTRIBUTES} >
  	<div id="wrapper" class='wrapper'>
  		<div id='header'>
		{component src='header'}
		</div>
		<div id='sidebar'>
	    {component src='sidebar'}
	    </div>
	    <div id="page-wrapper">
	        {viewpage}
	    </div>
	</div>
	{hook src='postHTMLBody'}
  </body>
	{$PAGE.JS_POSTLOAD}
</html>
{hook src='postHTML'}
