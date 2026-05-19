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
                        <tr class="header">
                            <td>ID</td>
                            <td>Nombre</td>
                            <td>Puesto</td>
                            <td>Salario Base (€)</td>
                            <td>Tipo Complemento (€)</td>
                            <td>Cantidad Complemento</td>
                            <td>Seguridad Social (€)</td>
                            <td>IRPF (€)</td>
                            <td>Salario Bruto (€)</td>
                            <td>Salario Neto (€)</td>
                        </tr>
                        <xsl:for-each select="nomina/empleado">
                        <tr>
                            <td><xsl:value-of select="@id"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="puesto"/></td>
                            <td><xsl:value-of select="salario_base"/></td>
                            <td><xsl:value-of select="complemento_variable/tipo"/></td>
                            <td><xsl:value-of select="complemento_variable/cantidad"/></td>
                            <td><xsl:value-of select="retenciones/seguridad_social"/></td>
                            <td><xsl:value-of select="retenciones/irpf"/></td>
                            <td><xsl:value-of select="salario_bruto"/></td>
                            <td><xsl:value-of select="salario_neto"/></td>
                        </tr>
                        </xsl:for-each>
                    </table>
                </div>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>