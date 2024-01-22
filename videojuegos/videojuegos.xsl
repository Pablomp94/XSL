<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">


<html>
    <style>
        
        tr th{
            width:300px;
            color:white;
        }
        h1{
            background-color:orange;
        }
       

        tr td{
            text-align: center;
        }
    </style>
<body>
<h1>Mis Videojuegos</h1>
<table>
	<tr bgcolor="grey">
		<th>Nombre</th>
		<th>Año</th>
		<th>Tipo</th>
		<th>Compañía</th>
        <th>Precio</th>
        <th>Web</th>
        <th>Cartel</th>
        <th>Recomendación</th>
	</tr>

	<xsl:for-each select="/videojuegos/juego">
	<xsl:sort select="@anio" order="ascending"/>
	
	<tr>
		<td>
			<xsl:value-of select="nombre"/>
		</td>
        <td>
			<xsl:value-of select="@anio"/>
		</td>
        <td>
			<xsl:value-of select="tipo"/>
		</td>
		<td>
            <xsl:value-of select="compañia/@nombre"/>
		</td>	
        <td>
            <xsl:value-of select="precio"/>
		</td>
        <td>
            <a href="{web}"><xsl:value-of select="nombre"/></a>
		</td>
        <td>
            <img src="{caratula}" alt="" width="250px"/>
		</td>
        
        <xsl:choose>
			<xsl:when test="edad_recomendada &lt; 6">
				<td bgcolor="green">
					<p>Puedes Jugar</p>
                </td>
            </xsl:when>
			<xsl:when test="edad_recomendada &gt; 17">
				<td bgcolor="red">
					<p>Juego Peligroso</p>
                </td>
            </xsl:when>
			<xsl:otherwise>
				<td bgcolor="white">
					<p>Esto se pone interesante</p>
                </td>
			</xsl:otherwise>
        </xsl:choose>
	</tr>
	
	</xsl:for-each>

</table>
</body>
</html>  
  
  
  
  </xsl:template>
</xsl:stylesheet>
