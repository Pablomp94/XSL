<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">


<xsl:template match="/">


<html>
<body>
<h1>Mi biblioteca personal</h1>
<table>
	<tr bgcolor="aqua">
		<th>Isbn</th>
		<th>Titulo</th>
		<th>Autor</th>
		<th>Precio</th>
		<th>web</th>
		
		
		
		
	</tr>

	<xsl:for-each select="libreria/libro">
	<xsl:sort select="titulo" order="descending"/>
	
	<xsl:if test="precio &gt;1">	
	</xsl:if>

	<tr>
		<xsl:choose>
			<xsl:when test="precio &lt; 12.50">
				<td bgcolor="red">
					<xsl:value-of select="isbn"/>
				</td>
				<td bgcolor="red">
					<xsl:value-of select="titulo"/>
				</td>
				<td bgcolor="red">
					<xsl:value-of select="autor"/>
				</td>
				<td bgcolor="red">
					<xsl:value-of select="precio"/>
				</td>
			</xsl:when>
			<xsl:when test="precio &gt; 25.50">
				<td bgcolor="lime">
					<xsl:value-of select="isbn"/>
				</td>
				<td bgcolor="lime">
					<xsl:value-of select="titulo"/>
				</td>
				<td bgcolor="lime">
					<xsl:value-of select="autor"/>
				</td>
				<td bgcolor="lime">
					<xsl:value-of select="precio"/>
				</td>
				
			</xsl:when>
			<xsl:otherwise>
				<td bgcolor="blue">
					<xsl:value-of select="isbn"/>
				</td>
				<td bgcolor="blue">
					<xsl:value-of select="titulo"/>
				</td>
				<td bgcolor="blue">
					<xsl:value-of select="autor"/>
				</td>
				<td bgcolor="blue">
					<xsl:value-of select="precio"/>
				</td>
			</xsl:otherwise>


		</xsl:choose>


		<td><a href="{web}"><img src="{imagen}" width="50" height="50"/></a></td>
		
		
		

	</tr>
	
	</xsl:for-each>

</table>
</body>
</html>  
  
  
  
  </xsl:template>
</xsl:stylesheet>
