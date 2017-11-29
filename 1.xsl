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
          <th>Book</th>
          <th>About</th>
          <!-- <th>Title</th>
          <th>Author</th> -->
          <th>Publication</th>
          <th>Plot Summary</th>
          <th>Praise for Gone Girl</th>
        </tr>
      </thead>
        <tbody>
             <xsl:apply-templates select="TEI">
             </xsl:apply-templates>
        </tbody>
             </table>
           </body>
         </html>
        </xsl:template>


        <xsl:template match="TEI">
              <tr>
                <xsl:apply-templates select="bookImages"/>
                <xsl:apply-templates select="teiHeader/fileDesc/titleStmt"/>
                <xsl:apply-templates select="teiHeader/fileDesc/publicationStmt"/>
                <xsl:apply-templates select="text"/>
              </tr>
        </xsl:template>


    <xsl:template match="bookImages">
      <td>
        <a>
          <img width="200">
            <xsl:attribute name="src">
              <xsl:value-of select="image[@type='jpg']/@src"/>
            </xsl:attribute>
          </img>
        </a>
      </td>
    </xsl:template>


      <xsl:template match="titleStmt">
       <td>
        <h2>Title:</h2>  <xsl:value-of select="title"/><br/><br/>
        <h2>Author:</h2> <xsl:value-of select="author"/><br/><br/>
        <h2>Genre:</h2> <xsl:value-of select="genre"/>
     </td>
      </xsl:template>

      <xsl:template match="publicationStmt">
        <td>

        <h2>Publisher:</h2>  <xsl:value-of select="publisher"/><br/>
        <br/><br/>
        <h2>Publish Date:</h2><xsl:value-of select="date"/>
        </td>
      </xsl:template>

      <xsl:template match="text">
       <td>
         <xsl:value-of select="body/div[@type='summary']"/>
       </td>
       <td>
         <xsl:value-of select="body/div[@type='praise']"/>
       </td>
      </xsl:template>



</xsl:stylesheet>
