<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">


<html>
<body>

<xsl:for-each select="/escrutinio_sitio/">

<table>
    <tr>
        <td colspan="8">Elecciones al parlamento de catalunya</td>
    </tr>
    <tr>
        <th>Votos</th>
        <th>
            <xsl:for-each select="contabilizados">
                <xsl:value-of select="cantidad"/>
            </xsl:for-each>
        </th>

        <th>Abstenciones</th>

        <th>
            <xsl:for-each select="abstenciones">
                <xsl:value-of select="cantidad"/>
            </xsl:for-each>          
        </th>

        <th>Nulos</th>

        <th>
            <xsl:for-each select="nulos">
                <xsl:value-of select="cantidad"/>
            </xsl:for-each>          
        </th>

        <th>Blanco</th>

        <th>
            <xsl:for-each select="blancos">
                <xsl:value-of select="cantidad"/>
            </xsl:for-each>          
        </th>

    </tr>

    
</table>
</xsl:for-each>
<table>
	<tr>
		<th>Logotipo</th>
		<th>Nombre</th>
		<th>Escaños</th>
		<th>Votos</th>
	</tr>



	<xsl:for-each select="root/escrutinio_sitio/resultados/partido">
	<xsl:sort select="electos" order="descending"/>
	
	<tr>
		<td>
			<img src="{logo}" alt=""/>
		</td>
		<td>
			<xsl:value-of select="nombre"/>
		</td>	
        <td>
            <xsl:value-of select="electos"/>
		</td>

        <td>
            <xsl:value-of select="votos_numero"/>
        </td>    

    </tr>
	</xsl:for-each>

</table>
</body>
</html>  
  
  
  
  </xsl:template>
</xsl:stylesheet>
