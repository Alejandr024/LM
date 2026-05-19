<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Información personal</title>
            </head>
            <body>         
                <div style="border: 1px solid black; width:250px; padding:10px;">
                    <h2 style="margin-top:0;">Información personal</h2>
                    <table border="1" cellpadding="5" cellspacing="0">
                        <tr>
                            <td>Nombre</td>
                            <td>Edad</td>
                        </tr>
                        <tr>
                            <td><xsl:value-of select="persona/nombre"/></td>
                            <td><xsl:value-of select="persona/edad"/></td>
                        </tr>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>