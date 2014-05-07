<?xml version="1.0"?>
<recipe>

    <#if appCompat?has_content><dependency mavenUrl="com.android.support:appcompat-v7:19.+"/></#if>    
    <dependency mavenUrl="com.android.support:support-v4:19.+"/>

	<#if isActivityAdded>
		<merge from="AndroidManifest.xml.ftl"
             to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />
		
		<merge from="res/values/foregroundLinearLayout_strings.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/foregroundLinearLayout_strings.xml" />

		<merge from="res/values/dimens.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/dimens.xml" />
    
		<!-- Decide what kind of layout(s) to add -->
		<instantiate from="res/layout/foregroundLinearLayout_layout.xml.ftl"
              to="${escapeXmlAttribute(resOut)}/layout/${layoutActivityName}.xml" />
			  
		<!-- Decide which activity code to add -->
		<instantiate from="src/app_package/SimpleActivity.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${activityClass}.java" />
					   
		<copy from="res/drawable-xhdpi"
            to="${escapeXmlAttribute(resOut)}/drawable-xhdpi" />
			 
			 
	</#if>
	
	<instantiate from="src/app_package/ForegroundLinearLayout.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${foregroundLinearLayoutClass}.java" />
	
	<merge from="res/values/foregroundLinearLayout_attrs.xml.ftl"
             to="${escapeXmlAttribute(resOut)}/values/foregroundLinearLayout_attrs.xml" />
    
</recipe>
