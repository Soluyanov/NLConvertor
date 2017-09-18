<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
<xsl:template match="city">
<xsl:variable name="city_id" select="@id" />


<xsl:for-each select="pfr">
<xsl:variable name="login_name" select="@id" />

<xsl:param name="for_day">
<xsl:value-of select="@for_day"/>
<xsl:text>unknown_day</xsl:text>
</xsl:param>


<xsl:for-each select = "apps">
<xsl:for-each select = "*">
<xsl:variable name="app_tag_id" select="@id" />
<xsl:variable name="app_tag_cnt" select="@v" />
<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';',$app_tag_id,
';',$app_tag_cnt,
';','&#xA;')"/>
</xsl:for-each>
</xsl:for-each>

</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
