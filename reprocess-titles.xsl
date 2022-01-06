<?xml version="1.0" encoding="UTF-8"?>
<!-- Author: Ethan Gruber
    Date: January 2022
    Function: Transform the Swiss National Museum RDF file into a static file with standard titles until
    the RDF export code can be updated -->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:dcterms="http://purl.org/dc/terms/"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:template match="@*|node()">
        <xsl:copy>
            <xsl:apply-templates select="@*|node()"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="dcterms:title">
        <dcterms:title>
            <xsl:text>Swiss National Museum: </xsl:text>
            <xsl:value-of select="parent::node()/dcterms:identifier"/>
        </dcterms:title>
    </xsl:template>
    
</xsl:stylesheet>