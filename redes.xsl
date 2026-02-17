<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html" encoding="UTF-8" indent="yes"/>

  <xsl:template match="/">
    <html>
      <head>
        <title>NetDocs - Grupo 10</title>
      </head>
      <body>
        <h1>Documentación de Redes</h1>
        <xsl:apply-templates select="redes/seccion"/>
      </body>
    </html>
  </xsl:template>

  <xsl:template match="seccion">
    <h2><xsl:value-of select="@titulo"/></h2>
    <xsl:apply-templates select="concepto"/>
  </xsl:template>

  <xsl:template match="concepto">
    <p><strong><xsl:value-of select="nombre"/></strong>: <xsl:value-of select="definicion"/></p>
  </xsl:template>

</xsl:stylesheet>