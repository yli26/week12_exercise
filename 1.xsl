<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html"/>

<xsl:template match="/">
 <html>
   <head>
      <meta charset="utf-8"></meta>
      <title>Gone Girl</title>
      <link rel="stylesheet" type="text/css" href="style.css"></link>
    </head>
   <body>
     <header>
     <h3>Gone Girl</h3>
   </header>
      <table border="1">

        <thead>
        <tr>
        <th>Title</th>
        <th>Publication</th>
        <th>About the book</th>

        </tr>
        </thead>
        <tbody>
             <xsl:apply-templates select="TEI/teiHeader/fileDesc">
                 </xsl:apply-templates>
        </tbody>
             </table>
           </body>
         </html>
        </xsl:template>


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
      </xsl:template>

</xsl:stylesheet>
