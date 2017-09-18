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

<xsl:variable name="http_visits_cnt_i" >
<xsl:for-each select="p">
<xsl:if test="@id = 'http_visits_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="virus_threat" >
<xsl:for-each select="p">
<xsl:if test="@id = 'virus_threat'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="proto_torrent_i" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'torrent'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="proto_http_i" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'http'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="proto_https_i" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'https'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="proto_shareman_i" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'shareman'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="proto_sip_i" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'sip'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="proto_total_i" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'total'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="dev_types_smart_tv_i" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'smart_tv'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_types_ios_i" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'ios'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_types_android_i" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'android'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_types_windows_mobile_i" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'windows_mobile'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';',$interval_id,
';',$http_visits_cnt_i,
';',$proto_torrent_i,
';',$proto_http_i,
';',$proto_https_i,
';',$proto_shareman_i,
';',$proto_sip_i,
';',$proto_total_i,
';',$dev_types_smart_tv_i,
';',$dev_types_ios_i,
';',$dev_types_android_i,
';',$dev_types_windows_mobile_i,
';',$virus_threat,
';','&#xA;')"/>
</xsl:for-each>
</xsl:for-each>

</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
