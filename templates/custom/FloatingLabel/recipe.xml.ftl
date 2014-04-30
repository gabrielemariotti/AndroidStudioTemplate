<?xml version="1.0"?>
<recipe>

    <#if appCompat?has_content><dependency mavenUrl="com.android.support:appcompat-v7:19.+"/></#if>    
    <dependency mavenUrl="com.android.support:support-v4:19.+"/>

	<#if isActivityAdded>
		<merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
		
		<merge from="res/values/floatinglabel_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/floatinglabel_strings.xml" />

		<merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    
		<!-- Decide what kind of layout(s) to add -->
		<instantiate from="res/layout/floatinglabel_layout.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityName}.xml" />
			  
		<!-- Decide which activity code to add -->
		<instantiate from="src/app_package/SimpleActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />

	</#if>
	
	<instantiate from="src/app_package/FloatLabelLayout.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${floatLabelLayoutClass}.java" />
	
	<merge from="res/values/floatinglabel_attrs.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/floatinglabel_attrs.xml" />
    
	<merge from="res/color/floatinglabel_colors.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/color/floatinglabel_colors.xml" />
    
	<merge from="res/values/floatinglabel_styles.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/floatinglabel_styles.xml" />
    
</recipe>
