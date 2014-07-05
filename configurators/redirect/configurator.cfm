<cfscript>
	$=application.serviceFactory.getBean('$').init(session.siteID);
	params = {};

	if ( IsJSON($.event('params')) ) {
		params = DeserializeJSON($.event('params'));
	};

	defaultParams = {
		redirectURL = ''
	};

	StructAppend(params, defaultParams, false);
</cfscript>

<cfoutput>
	<div id="availableObjectParams"
	data-object="plugin"
	data-name="Redirect"
	data-objectid="#$.event('objectID')#">

	<dl class="singleColumn">
		<dt>Redirect to following URL:</dt>
		<dd>
			<input name="redirectURL"
			class="objectParam"
			value="#HTMLEditFormat(params.redirectURL)#"/>
		</dd>
	</dl>
</div>
</cfoutput>