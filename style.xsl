<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
 <html>
   <body>
     <h3>Gone with the wind</h3>
     <xsl:apply-templates/>

   </body>
  </html>
  </xsl:template>


<!--

  <xsl:template match="fileDesc">
   <tr>
  <xsl:apply-templates select="titleStmt"/>
  <xsl:apply-templates select="publicationStmt"/>
  <xsl:apply-templates select="sourceDesc"/>
   </tr>
  </xsl:template>

  <xsl:template match="titleStmt">
   <td>
     <xsl:value-of select="title"/>
   </td>
  </xsl:template>

  <xsl:template match="publicationStmt">
 <td>
   <xsl:value-of select="publisher"/>
   <xsl:value-of select="date"/>
 </td>
</xsl:template>

<xsl:template match="sourceDesc">
 <td>
   <xsl:value-of select="p"/>
 </td>
</xsl:template>-->

</xsl:stylesheet> 
