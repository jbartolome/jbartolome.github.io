<?xml version="1.0" encoding="UTF-8"?>
<html xsl:version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<body style="font-family:Arial;font-size:12pt;background-color:#EEEEEE"
xmlns:stock = "http://www.ineasysteps.com/xsd" >

<h1>Stocks with Prices Greater than $70</h1>
<table style="width:50%; border-collapse: collapse">
    <tr style="background-color:#000; color:#fff;font-weight:bold;">
        <th style="border: 1px #757575 solid;">Symbol</th>
        <th style="border: 1px #757575 solid;">Price</th>
        <th style="border: 1px #757575 solid;">CEO</th>
    </tr>
    <xsl:for-each select="stock:doc/stock:item">
        <xsl:if test="stock:price &gt; 70">   
            <xsl:variable name="altRow">
                <xsl:choose>
                    <xsl:when test="position() mod 2 = 0">#4dd0e1</xsl:when>
                    <xsl:otherwise>#e0e0e0</xsl:otherwise>
                </xsl:choose>
            </xsl:variable>
            <tr style="background-color: {$altRow}">
                <td style="border: 1px #757575 solid;"><xsl:value-of select="stock:symbol"/></td>
                <td style="border: 1px #757575 solid;"><xsl:value-of select="stock:price"/></td>
                <td style="border: 1px #757575 solid;"><xsl:value-of select="stock:ceo"/></td>
            </tr>
        </xsl:if>
    </xsl:for-each>
</table>
</body>
</html>