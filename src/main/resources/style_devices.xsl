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



<xsl:variable name="device_id" >
<xsl:for-each select="devices">


<xsl:for-each select="*">
<xsl:value-of select="@id"/>


<xsl:variable name="dev_http_visits_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'http_visits_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="dev_vk_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'vk_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="dev_mail_ru_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'mail_ru_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_top_5_sites" >
<xsl:for-each select="p">
<xsl:if test="@id = 'top_5_sites'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>




<xsl:variable name="dev_model" >
<xsl:for-each select="info">
<xsl:for-each select = "*">
<xsl:if test="@id = 'model'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="dev_ua" >
<xsl:for-each select="info">
<xsl:for-each select = "*">
<xsl:if test="@id = 'ua'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="dev_ua_ver" >
<xsl:for-each select="info">
<xsl:for-each select = "*">
<xsl:if test="@id = 'ua_ver'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="dev_os" >
<xsl:for-each select="info">
<xsl:for-each select = "*">
<xsl:if test="@id = 'os'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="dev_os_ver" >
<xsl:for-each select="info">
<xsl:for-each select = "*">
<xsl:if test="@id = 'os_ver'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


</xsl:for-each>
<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';',$device_id,
';',$dev_http_visits_cnt
';',$dev_vk_cnt,
';',$dev_mail_ru_cnt,
';',$dev_top_5_sites,
';',$dev_model,
';',$dev_ua,
';',$dev_ua_ver,
';',$dev_os,
';',$dev_os_ver,
'&#xA;')"/>
</xsl:for-each>
</xsl:variable>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
