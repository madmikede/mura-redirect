<cfset var params = $.event('objectParams')>
<cflocation url="#params.RedirectURL#" statuscode="301" addtoken="false">
