<#assign VOID = freeMarkerPortletPreferences.setValue("portletSetupPortletDecoratorId", "barebone")>
<nav class="navbar navbar-expand-md navbar-light navbar-lrm">
	<a class="navbar-brand" href="#">
		<img alt="${logo_description}" height="40" src="${site_logo}" />
	</a>
	<div class="form-inline order-md-2 col-xs-expand">
		<div class="d-none d-md-inline-flex">
			<button class="btn btn-sm btn-secondary btn-unstyled btn-search">
				<span class="icon-lens">
					<@liferay_ui["icon"] icon="search" markupView="lexicon" />
				</span>
				<span class="icon-times">
					<@liferay_ui["icon"] icon="times" markupView="lexicon" />
				</span>
			</button>
		</div>
		
		<div class="d-md-none col-xs-expand search-toggle p-md-2">
		<!-- portlet search -->
			<@liferay.search default_preferences="${freeMarkerPortletPreferences}" />
		</div>
	</div>

	<div class="navbar-user order-md-2 m-3">
		<@liferay.user_personal_bar />
	</div>
	
	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>
	
	<div class="collapse navbar-collapse order-md-1" id="navbarSupportedContent">
		<!-- portlet navigation -->
		<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
	</div>
</nav>
<#assign VOID = freeMarkerPortletPreferences.reset()>