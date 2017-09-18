<?xml version="1.0"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format" >
<xsl:output method="text" omit-xml-declaration="yes" indent="no"/>
<xsl:template match="city">
<xsl:variable name="city_id" select="@id" />
<xsl:for-each select="pfr">
<xsl:variable name="login_name" select="@id" />

<xsl:param name="for_day">
<xsl:value-of select="@for_day"/>
<xsl:text>unknown_day</xsl:text>
</xsl:param>


<xsl:for-each select = "games">
<xsl:for-each select = "*">  //берём каждую игру
<xsl:variable name="game_id" select="@id" />
<xsl:for-each select = "*"> //и начинаем перебирать все остальные и сравнивать с нею



<xsl:variable name="stuff" select="@v" />
<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';',$game_id,
';',$stuff,
';','&#xA;')"/>
</xsl:for-each>
</xsl:for-each>



</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
