<!DOCTYPE html>

<#include init />

<html class="${root_css_class}" dir="<@liferay.language key="lang.dir" />" lang="${w3c_language_id}">

<head>
	<title>${the_title}</title>

	<meta content="initial-scale=1.0, width=device-width" name="viewport" />

	<@liferay_util["include"] page=top_head_include />
</head>

<body class="${css_class}">

<@liferay_ui["quick-access"] contentId="#main-content" />

<@liferay_util["include"] page=body_top_include />

<@liferay.control_menu />

<div class="pt-0" id="wrapper">
	<#if header_margin_bottom>
		<header class="mb-3 mb-md-5" id="banner">
	<#else>
		<header id="banner">
	</#if>
		<#assign preferences = freeMarkerPortletPreferences.getPreferences({"portletSetupPortletDecoratorId": "barebone", "destination": "/search"}) />

		<#include "${full_templates_path}/navigation.ftl" />
	</header>

	<#if show_temp_content>
		<#include "${full_templates_path}/temp_content.ftl" />
	</#if>
	<section class="container-fluid" id="content">
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

	<#include "${full_templates_path}/footer.ftl" />
</div>

<@liferay_util["include"] page=body_bottom_include />

<@liferay_util["include"] page=bottom_include />

<!-- inject:js -->
<!-- endinject -->

</body>

</html>