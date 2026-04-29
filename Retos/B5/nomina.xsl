<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Nómina de Empleado</title>
                <link rel="stylesheet" href="style.css"/>
            </head>
            <body>         
                <div>
                    <h2 style="margin-top:0;">Nómina de Empleado</h2>
                    <table>
                        <tr>
                            <td>ID</td>
                            <td>Nombre</td>
                            <td>Puesto</td>
                            <td>Salario Base (€)</td>
                            <td>Tipo Complemento (€)</td>
                            <td>Cantidad Complemento</td>
                            <td>Seguridad Social (€)</td>
                            <td>IRPF (€)</td>
                            <td>Salario Brtuo (€)</td>
                            <td>Salario Neto (€)</td>
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