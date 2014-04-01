<?xml version="1.0"?>
<recipe>

	<instantiate from="src/app_package/CustomAdapter.java.ftl"
                       to="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />
	
    <open file="${escapeXmlAttribute(srcOut)}/${adapterClass}.java" />

</recipe>
