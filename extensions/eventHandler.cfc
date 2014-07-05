component accessors=true extends='mura.plugin.pluginGenericEventHandler' output=false {

	property name='$' hint='mura scope';


	public any function onApplicationLoad(required struct $) {
		// Register all event handlers/listeners of this .cfc with Mura CMS
		variables.pluginConfig.addEventHandler(this);
		set$(arguments.$);
	}

	public any function onSiteRequestStart(required struct $) {
		// Makes any methods of the object accessible via $.yourPluginPackageName
		var contentRenderer = new contentRenderer(arguments.$);
		arguments.$.setCustomMuraScopeKey("redirect", contentRenderer);
		set$(arguments.$);
	}

}