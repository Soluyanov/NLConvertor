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



<xsl:for-each select = "socials">


<xsl:for-each select = "vk">

<xsl:variable name="age" >
<xsl:for-each select="*">
<xsl:if test="@id = 'age'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="gender" >
<xsl:for-each select="*">
<xsl:if test="@id = 'gender'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="edu_status" >
<xsl:for-each select="*">
<xsl:if test="@id = 'edu_status'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="relation" >
<xsl:for-each select="*">
<xsl:if test="@id = 'relation'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="relatives_cnt" >
<xsl:for-each select="*">
<xsl:if test="@id = 'relatives_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="has_children" >
<xsl:for-each select="*">
<xsl:if test="@id = 'has_children'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';','vk',
';',$gender,
';',$age,
';',$edu_status,
';',$relation,
';',$relatives_cnt,
';',$has_children,
';','&#xA;')"/>

</xsl:for-each>






<xsl:for-each select = "mail_ru">
<xsl:variable name="age" >
<xsl:for-each select="*">
<xsl:if test="@id = 'age'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="gender" >
<xsl:for-each select="*">
<xsl:if test="@id = 'gender'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="edu_status" >
<xsl:for-each select="*">
<xsl:if test="@id = 'edu_status'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="relation" >
<xsl:for-each select="*">
<xsl:if test="@id = 'relation'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>


<xsl:variable name="relatives_cnt" >
<xsl:for-each select="*">
<xsl:if test="@id = 'relatives_cnt'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:variable name="has_children" >
<xsl:for-each select="*">
<xsl:if test="@id = 'has_children'">
<xsl:value-of select="@v"/>
</xsl:if>
</xsl:for-each>
</xsl:variable>



<xsl:value-of select="concat($city_id,
';',$login_name,
';',$for_day,
';','mailru',
';',$gender,
';',$age,
';',$edu_status,
';',$relation,
';',$relatives_cnt,
';',$has_children,
';','&#xA;')"/>


</xsl:for-each>
</xsl:for-each>



</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
