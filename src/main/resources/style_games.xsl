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


<xsl:variable name="game" >
<xsl:for-each select="games">
<xsl:for-each select="*">
<xsl:value-of select="@id"/>
<xsl:if test="starsts-with(@id,'g_')">
<xsl:variable name="val" >
<xsl:value-of select="@v"/>
</xsl:variable>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="gameMap" as="map(xs:string, xs:string)">
      <map>
         <entry key="val" value="Monday"/>
         <entry key="time" value="Tuesday"/>
         <entry key="dl" value="Wednesday"/>
      </map>
   </xsl:variable>




<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';',$game,
';',$stuff_val,
';',$stuff_time,
';',$stuff_dl,
'&#xA;')"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
