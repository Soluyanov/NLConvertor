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



<xsl:for-each select="categories">
<xsl:for-each select="*">
<xsl:variable name="cat_id_i" select="@id" />
<xsl:variable name="cat_val_i" select="@v" />

<xsl:variable name="cat_ref_i" >
<xsl:if test="@id = 'leavers_weekly'">
<xsl:value-of select="@a"/>
</xsl:if>
</xsl:variable>

<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';',$interval_id,
';',$cat_id_i,
';',$cat_val_i,
';',$cat_ref_i,
';','&#xA;')"/>



</xsl:for-each>
</xsl:for-each>
</xsl:for-each>
</xsl:for-each>


</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
