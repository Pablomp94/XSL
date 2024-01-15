<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">



<html>
<body>

<xsl:for-each select="elecciones/eleccion">
<xsl:sort select="fecha" order="descending"/>
    
    <xsl:value-of select="tipo"/> &#160;<xsl:value-of select="fecha"/> <br></br>

    <table>
		    <xsl:for-each select="resultados/partido">
            <tr>
			    <td><xsl:value-of select="nombre"/></td> 
                <td><xsl:value-of select="candidato"/></td>
                <td><xsl:value-of select="escaños"/></td>
		    </tr>
            </xsl:for-each>
            
            <br></br>
	</table>	    

    <br></br>
    
</xsl:for-each>

</body>
</html>  
  
  </xsl:template>
</xsl:stylesheet>