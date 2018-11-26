<nav class="navbar navbar-expand-md navbar-light navbar-lrm">
	<div class="container-fluid">
		<a class="navbar-brand" href="#">
			<img alt="${logo_description}" height="40" src="${site_logo}" />
		</a>
		<div class="form-inline order-md-2 col-xs-expand">
			<a class="btn btn-outline-borderless btn-outline-secondary btn-sm btn-search collapsed ml-auto" data-toggle="collapse" href="#searchCollapse" role="button" aria-expanded="false" aria-controls="searchCollapse">
				<span class="icon-lens">
					<@liferay_ui["icon"] icon="search" markupView="lexicon" />
				</span>
				<span class="icon-times">
					<@liferay_ui["icon"] icon="times" markupView="lexicon" />
				</span>
			</a>

			<div class="collapse search-toggle" id="searchCollapse">
				<div class="p-2">
					<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />
					<@liferay.search default_preferences="${preferences}" />
				</div>
			</div>
		</div>

		<div class="user-bar order-md-2 mx-3">
			<@liferay.user_personal_bar />
		</div>

		<button class="btn-sm navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse order-md-1" id="navbarCollapse">
			<@liferay.navigation_menu default_preferences="${freeMarkerPortletPreferences}" />
		</div>
	</div>
</nav>

<#assign VOID = freeMarkerPortletPreferences.reset()>