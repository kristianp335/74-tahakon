<#assign
	show_footer = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-footer"))
	show_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header"))
	show_header_search = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-header-search"))
	wrap_widget_page_content = getterUtil.getBoolean(themeDisplay.getThemeSetting("wrap-widget-page-content"))
	show_account_selector = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-account-selector"))
	show_mini_cart = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-mini-cart"))
/>

<#if wrap_widget_page_content && ((layout.isTypeContent() && themeDisplay.isStateMaximized()) || (layout.getType() == "portlet"))>
	<#assign portal_content_css_class = "container" />
<#else>
	<#assign portal_content_css_class = "" />
</#if>

<#--  Formed Theme  -->



<#assign show_dockbar = permissionChecker.isOmniadmin() || permissionChecker.isGroupAdmin(user_id) || user.getFirstName() == "Content"/>

<#assign
	enable_sticky_header = getterUtil.getBoolean(themeDisplay.getThemeSetting("enable-sticky-header"))
	show_language_selector = getterUtil.getBoolean(themeDisplay.getThemeSetting("show-language-selector"))
/>