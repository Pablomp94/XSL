<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">



<html>
<body>
<h1 style="text-align:center;">MODELOS</h1>
<table>
	<tr bgcolor="purple">
		<th>Nombre</th>
		<th>Edad</th>
		<th>Altura</th>
		<th>Imagen</th>
		<th>Enlace</th>
		<th>Marcas</th>
	</tr>

	<xsl:for-each select="modelos/modelo">
	<xsl:sort select="titulo" order="descending"/>
	
	<xsl:if test="precio &gt;1">	
	</xsl:if>

	<tr>
        <td bgcolor="pink"><xsl:value-of select="nombre"/> &#160; <xsl:value-of select="apellidos"/></td>
			
        <td bgcolor="pink"><xsl:value-of select="edad"/></td>
        <td bgcolor="pink"><xsl:value-of select="@altura"/></td>
		<td bgcolor="pink"><img src="{imagen}" width="200px"></img> </td>
		<td bgcolor="pink"><a href="{enlace}"><xsl:value-of select="enlace"/></a></td>
        
		<td bgcolor="pink">
		<xsl:for-each select="desfiles/marca">
			<xsl:value-of select="."/> <br></br>
		</xsl:for-each>
		</td>
    </tr>
    </xsl:for-each>

</table>
</body>
</html>  
  
  </xsl:template>
</xsl:stylesheet>
