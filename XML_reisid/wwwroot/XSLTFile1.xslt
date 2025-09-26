<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

	<xsl:output method="xml" indent="yes" />

	<xsl:template match="/Reisid">
		<html>
			<head>
				<style>
					.yellow {
					background-color: yellow;
					padding: 5px;
					display: block;
					margin: 5px 0;
					}
				</style>
			</head>
			<body>
				<h1>Reiside nimekiri</h1>
				<ul>
					<xsl:apply-templates select="Reis"/>
				</ul>
			</body>
		</html>
	</xsl:template>

	<xsl:template match="Reis">
		<li>
			<strong>Sihtkoht:</strong>
			<xsl:value-of select="Sihtkoht"/>
			<br/>
			<strong>Lennujaam:</strong>
			<xsl:value-of select="Lennujaam"/>
			<br/>
			<strong>Hind:</strong>
			<xsl:value-of select="Hind"/>
			<br/>

			<div class="yellow">
				<strong>Transport tüüp:</strong>
				<xsl:value-of select="Transport/@type"/>
				<ul>
					<li class="yellow">
						Alguskuupäev: <xsl:value-of select="Transport/Alguskuupäev"/>
					</li>
					<li class="yellow">
						Kirjeldus: <xsl:value-of select="Transport/Kirjeldus"/>
					</li>
				</ul>
			</div>

			<strong>Lõppkuupäev:</strong>
			<xsl:value-of select="Lõppkuupäev"/>
			<br/>
			<strong>Reisikorraldaja:</strong>
			<xsl:value-of select="Reisikorraldaja"/>
		</li>
	</xsl:template>

</xsl:stylesheet>

