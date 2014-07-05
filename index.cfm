<cfinclude template="plugin/config.cfm" />
<cfsavecontent variable="body">
	<cfoutput>
		<h2>#pluginConfig.getName()#</h2>
		<p>This is a really easy plugin for redirecting to another page</p>
		<h3>Usage</h3>
		<p>Pretty easy: Add the plugin to a page and enter the URL you want to be redirected, 
		when the page is opened.</p>
		<p>You can use a relative URL like /pathTo/MyPage to redirect to a page in your website, or use
		an absolute URL like http://www.mydomain.com to redirect to an external website.</p>
		<h3>Attention!!</h3>
		<p>With this plugin it is really easy to generate endless loops! So be careful, when you add the
		plugin and point to a page below the page and inherit the object to the pages below.</p> 
	</cfoutput>
</cfsavecontent>
<cfoutput>
	#$.getBean('pluginManager').renderAdminTemplate(
	body=body
	, pageTitle=pluginConfig.getName()
	)#
</cfoutput>