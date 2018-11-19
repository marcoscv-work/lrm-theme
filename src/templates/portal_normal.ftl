<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title}}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<header id="banner">
		<div class="navbar navbar-lrm navbar-light navbar-top py-3">
			<div class="container">

				<a class="${logo_css_class} navbar-brand" href="${site_default_url}" title="<@liferay.language_format arguments="" key="go-to-x" />">
					<img alt="${logo_description}" height="40" src="${site_logo}" />

					<#--  <#if show_site_name>
						<h1 class="font-weight-bold h2 mb-0 text-dark">${site_name}</h1>
					</#if>  -->
				</a>

				<div class="autofit-col-expand navbar navbar-expand-md">
					<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

					<#include "${full_templates_path}/navigation.ftl" />

					<div class="autofit-col">
						<div class="justify-content-md-end mr-4 navbar-form" role="search">
							<@liferay.search_bar default_preferences="${preferences}" />
						</div>
					</div>

					<div class="autofit-col">
						<@liferay.user_personal_bar />
					</div>

					<#if has_navigation>
						<button aria-controls="navigationCollapse" aria-expanded="false" aria-label="Toggle navigation" class="navbar-toggler navbar-toggler-right" data-target="#navigationCollapse" data-toggle="collapse" type="button">
							<span class="navbar-toggler-icon"></span>
						</button>
					</#if>
				</div>
			</div>
		</div>
	</header>

	<section id="content">
		<h1 class="hide-accessible">${the_title}</h1>

		<#if selectable>
			<@liferay_util["include"] page=content_include />
		<#else>
			${portletDisplay.recycle()}

			${portletDisplay.setTitle(the_title)}

			<@liferay_theme["wrap-portlet"] page="portlet.ftl">
				<@liferay_util["include"] page=content_include />
			</@>
		</#if>
	</section>

	<footer id="footer" role="contentinfo">
		<p class="powered-by">
			<@liferay.language key="powered-by" /> <a href="http://www.liferay.com" rel="external">Liferay</a>
		</p>
	</footer>
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
2027
<!-- endinject -->

</body>

</html>