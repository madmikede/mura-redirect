function redirectConfigurator(data){
	initConfigurator(
		data,
		{
			url:'../plugins/redirect/configurators/redirect/configurator.cfm',
			pars:'',
			title: 'Redirect configuration',
			init: function(){},
			destroy: function(){},
			validate: function(){
				return true;
			}
		}
	);
	 
	return true;
}