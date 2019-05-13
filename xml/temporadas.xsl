<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output method="html" encoding="UTF-8" indent="yes"/>
    <xsl:template match="/">
        <html>
            <head>
                <meta name="author" content="Nerea Valdés Egocheaga"/>
                <meta name="description"
                      content="Proyecto Dark - Junio Software y Estándares para la Web"/>
                <meta name="keywords" content="SEW,Dark,Junio,Software,Estándares,Web"/>
                <title>Proyecto Dark - Junio Software y Estándares para la Web</title>
                <link rel="stylesheet" type="text/css" href="../css/style.css"/>
            </head>
            <body>
                <header>
                    <h1>Dark</h1>
                </header>
                <main>
                    <xsl:for-each select="temporadas/temporada">
                            <section>
                                <h2>
                                    <xsl:value-of select="titulo"/>
                                </h2>
                                <h3>Episodios:</h3>
                                <ul>
                                    <xsl:for-each select="episodios/episodio">

                                        <section>
                                        <h3>
                                        Episodio <xsl:value-of select="ep"/> :
                                        <xsl:value-of select="titulo"/>
                                        </h3>

                                        <h4>Resumen:</h4>
                                        <p>
                                            <xsl:value-of select="resumen"/>
                                        </p>
                                        <h5>Sucesos</h5>
                                        <ul>
                                            <xsl:for-each select="episodio/suceso">
                                                <li>
                                                    <xsl:value-of select="descripcion"/>
                                                </li>
                                            </xsl:for-each>
                                        </ul>

                                        </section>
                                    </xsl:for-each>
                                </ul>


                            </section>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>