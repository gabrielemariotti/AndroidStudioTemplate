<?xml version="1.0"?>
<recipe>

	<dependency mavenUrl="com.android.support:recyclerview-v7:21.0.0"/>

	<instantiate from="src/app_package/CustomAdapter.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />
	
    <open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />

</recipe>
