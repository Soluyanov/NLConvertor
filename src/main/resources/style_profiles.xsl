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



<xsl:variable name="all_dev_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'all_dev_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="active_dev_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'active_dev_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>




<xsl:variable name="http_visits_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'http_visits_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>







<xsl:variable name="top_5_sites" >
<xsl:for-each select="p">
<xsl:if test="@id = 'top_5_sites'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="vk_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'vk_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="mail_ru_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'mail_ru_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="competitors_visits_cnt" >
<xsl:for-each select="p">
<xsl:if test="@id = 'competitors_visits_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="top_5_game_sites" >
<xsl:for-each select="p">
<xsl:if test="@id = 'top_5_game_sites'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="proto_torrent" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'torrent'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="proto_shareman" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'shareman'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="proto_http" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'http'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="proto_https" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'https'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="proto_total" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'total'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="proto_sip" >
<xsl:for-each select="proto">
<xsl:for-each select="*">
<xsl:if test="@id = 'sip'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_types_smart_tv" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'smart_tv'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_types_ios" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'dev_types_ios'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_types_android" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'dev_types_android'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:variable name="dev_types_windows_mobile" >
<xsl:for-each select="dev_types">
<xsl:for-each select="*">
<xsl:if test="@id = 'dev_types_windows_mobile'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:for-each>
</xsl:variable>

<xsl:value-of select="concat($city_id,
';',$login_name,
';',$all_dev_cnt,
';',$active_dev_cnt,
';',$http_visits_cnt,
';',$top_5_sites,
';',$for_day,
';',$proto_torrent,
';',$proto_shareman,
';',$proto_http,
';',$proto_https,
';',$proto_total,
';',$proto_sip,
';',$vk_cnt,
';',$mail_ru_cnt,
';',$competitors_visits_cnt,
';',$dev_types_smart_tv,
';',$dev_types_ios,
';',$dev_types_android,
';',$dev_types_windows_mobile,
';',$top_5_game_sites,
'&#xA;')"/>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
