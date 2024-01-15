<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">


<html>
<body>
<h1>Surfear en Archena</h1>
<table>
	<tr bgcolor="red">
		<th>Día</th>
		<th>Viento Km/h</th>
		<th>Estado del cielo</th>
		<th>Lugar recomendado</th>
	</tr>

	<xsl:for-each select="root/prediccion/dia">
	<xsl:sort select="@fecha" order="ascending"/>
	
	<tr>
		<td>
			<xsl:value-of select="@fecha"/>
		</td>
		<td>
            <xsl:for-each select="viento/velocidad">
			    <xsl:value-of select="."/>
            </xsl:for-each>
		</td>	
        <td>
            <xsl:for-each select="/estado_cielo">
			    <xsl:value-of select="@descripcion"/>
            </xsl:for-each>
		</td>
        <xsl:choose>
			<xsl:when test="viento/velocidad &gt; 20">
				<td bgcolor="green">
					<a href=": http://www.balneariodearchena.com/"></a>
                </td>
            </xsl:when>
        </xsl:choose>
	</tr>
	
	</xsl:for-each>

</table>
</body>
</html>  
  
  
  
  </xsl:template>
</xsl:stylesheet>
