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


<xsl:for-each select = "intervals">
<xsl:for-each select = "*">
<xsl:variable name="interval_id" select="@id" />
<xsl:for-each select = "devices">
<xsl:for-each select = "*">
<xsl:variable name="device_id_new" select="@id" />
<xsl:variable name="device_id_i" select="@oldId" />

<xsl:variable name="dev_http_visits_cnt_i" >
<xsl:for-each select="p">
<xsl:if test="@id = 'http_visits_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>




<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';',$interval_id,
';',$device_id_i,
';',$dev_http_visits_cnt_i,
';',$device_id_new,
';','&#xA;')"/>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>


</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
