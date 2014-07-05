<plugin>
	<name>Redirect</name>
	<package>Redirect</package>
	<directoryFormat>packageOnly</directoryFormat>
	<loadPriority>5</loadPriority>
	<version>0.1</version>
	<provider>Michael Hnat</provider>
	<providerURL>http://www.bluegras.de</providerURL>
	<category>Utility</category>
	<mappings></mappings>
	<settings></settings>
	<eventHandlers>
		<!-- only need to register the eventHandler.cfc via onApplicationLoad() -->
		<eventHandler event="onApplicationLoad"	component="extensions.eventHandler" persist="false" />
	</eventHandlers>
	<displayobjects location="global">
			<displayobject 
				name="Redirect to page" 
				displaymethod="redirect" 
				displayobjectfile="display/redirect.cfm"
				configuratorInit="redirectConfigurator"
				configuratorJS="configurators/redirect/configurator.js"
				persist="false"
			/>
	</displayobjects>
</plugin>