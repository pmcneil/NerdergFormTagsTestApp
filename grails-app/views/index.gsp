<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main"/>
		<title>Welcome to Grails</title>
		<style type="text/css" media="screen">
			#status {
				background-color: #eee;
				border: .2em solid #fff;
				margin: 2em 2em 1em;
				padding: 1em;
				width: 12em;
				float: left;
				-moz-box-shadow: 0px 0px 1.25em #ccc;
				-webkit-box-shadow: 0px 0px 1.25em #ccc;
				box-shadow: 0px 0px 1.25em #ccc;
				-moz-border-radius: 0.6em;
				-webkit-border-radius: 0.6em;
				border-radius: 0.6em;
			}

			.ie6 #status {
				display: inline; /* float double margin fix http://www.positioniseverything.net/explorer/doubled-margin.html */
			}

			#status ul {
				font-size: 0.9em;
				list-style-type: none;
				margin-bottom: 0.6em;
				padding: 0;
			}
            
			#status li {
				line-height: 1.3;
			}

			#status h1 {
				text-transform: uppercase;
				font-size: 1.1em;
				margin: 0 0 0.3em;
			}

			#page-body {
				margin: 2em 1em 1.25em 18em;
			}

			h2 {
				margin-top: 1em;
				margin-bottom: 0.3em;
				font-size: 1em;
			}

			p {
				line-height: 1.5;
				margin: 0.25em 0;
			}

			#controller-list ul {
				list-style-position: inside;
			}

			#controller-list li {
				line-height: 1.3;
				list-style-position: inside;
				margin: 0.25em 0;
			}

			@media screen and (max-width: 480px) {
				#status {
					display: none;
				}

				#page-body {
					margin: 0 1em 1em;
				}

				#page-body h1 {
					margin-top: 0;
				}
			}
		</style>
        <r:require modules="nerdergFormTags"/>

    </head>
	<body>
		<a href="#page-body" class="skip"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div id="status" role="complementary">
			<h1>Application Status</h1>
			<ul>
				<li>App version: <g:meta name="app.version"/></li>
				<li>Grails version: <g:meta name="app.grails.version"/></li>
				<li>Groovy version: ${org.codehaus.groovy.runtime.InvokerHelper.getVersion()}</li>
				<li>JVM version: ${System.getProperty('java.version')}</li>
				<li>Reloading active: ${grails.util.Environment.reloadingAgentEnabled}</li>
				<li>Controllers: ${grailsApplication.controllerClasses.size()}</li>
				<li>Domains: ${grailsApplication.domainClasses.size()}</li>
				<li>Services: ${grailsApplication.serviceClasses.size()}</li>
				<li>Tag Libraries: ${grailsApplication.tagLibClasses.size()}</li>
			</ul>
			<h1>Installed Plugins</h1>
			<ul>
				<g:each var="plugin" in="${applicationContext.getBean('pluginManager').allPlugins}">
					<li>${plugin.name} - ${plugin.version}</li>
				</g:each>
			</ul>
		</div>
		<div id="page-body" role="main">
            <h1>Nerderg Form Tags Test</h1>

            <p>This is a test application for the Nerderg Form Tags. An example of each tag is
            shown below.</p>

            <h3>CSS formatted</h3>

            <div>
                <nerderg:formfield label='Select one' field='age'>
                    <g:select name="age" from="${18..65}" value="45"/>
                </nerderg:formfield>

                <nerderg:inputfield label='First name' field='firstname' value="nerdErg"/>
                <nerderg:datefield label='Date of birth' field='dob' bean='[dob: new Date()]' format='dd/MM/yyyy'/>
                <nerderg:timefield label='Time of birth' field='tob' bean='[tob: new Date()]' format='hh:mm a'/>
                <nerderg:datetimefield label='When' field='date' bean='[date: "Tomorrow 2pm"]' format='dd/MM/yyyy hh:mm a'/>
                <nerderg:checkboxgroup label='Options' field='selOptions' from='["opt1", "opt2", "opt3"]' value='["opt2"]'/>
            </div>

            <h3>Inlined input fields</h3>

            <div class="inlineInputFields">
                <nerderg:inputfield label='Title' field='ititle' value="King"/>
                <nerderg:inputfield label='First name' field='ifirstname' value="Fred"/>
                <nerderg:inputfield label='Last name' field='ilastname' value="Bloggs"/>
            </div>

            <h3>Table formatted</h3>
            <table>
                <nerderg:formfield table="true" label='Select one' field='age'>
                    <g:select name="age" from="${18..65}" value="45"/>
                </nerderg:formfield>

                <nerderg:inputfield table="true" label='First name' field='tfirstname' value="nerdErg"/>
                <nerderg:datefield table="true" label='Date of birth' field='tdob' bean='[tdob: new Date()]'
                                   format='dd/MM/yyyy'/>
                <nerderg:timefield table="true" label='Time of birth' field='ttob' bean='[ttob: new Date()]' format='hh:mm a'/>
                <nerderg:datetimefield table="true" label='When' field='tdate' bean='[tdate: new Date()]'
                                       format='dd/MM/yyyy hh:mm a'/>
                <nerderg:checkboxgroup table="true" label='Options' field='tselOptions' from='["opt1", "opt2", "opt3"]'
                                       value='["opt2"]'/>
            </table>

        </div>
	</body>
</html>
