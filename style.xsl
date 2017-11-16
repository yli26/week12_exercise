<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8"/>


<xsl:template match="/">
  <html>
    <head>
      <meta charset="utf-8"></meta>
      <title><xsl:value-of select="//tei:teiHeader/tei:fileDesc/tei:titleStmt/tei:title"/</title>
       <!-- css styles -->
       <!-- <link rel="stylesheet" type="text/css" href="styles.css"></link> -->
     </head>
     <body>
       <header>
       <h1>Gone Girl</h1>
     </header>

        <!-- <caption>Ancient Chinese Sites</caption> -->

          </xsl:apply-templates>
        </tbody>
      </table>
    </body>
  </html>
</xsl:template>



<xsl:template match="tei:teiHeader">
  <xsl:apply-templates select="//tei:titleStmt"/>
</xsl:template>

</xsl:stylesheet>
