<?xml version="1.0" encoding="UTF-8"?>

  <xsl:stylesheet version="1.0"
    xmlns:dat="http://ws.wso2.org/dataservice" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:output indent="yes"/>
    <xsl:strip-space elements="*"/>
    <xsl:param name="storeid"/>
    <xsl:template match="/">
      <xsl:choose>
        <xsl:when test="$storeid=1">
          <dat:createSaleOrder_batch_req>
            <xsl:for-each select="dat:createSaleOrder/dat:itemlist/dat:item">
              <dat:createSaleOrder>
                <dat:custid>
                  <xsl:value-of select="//dat:custid"/>
                </dat:custid>
                <dat:poid>
                  <xsl:value-of select="//dat:poid"/>
                </dat:poid>
                <dat:custname>
                  <xsl:value-of select="//dat:custname"/>
                </dat:custname>
                <dat:itemid>
                  <xsl:value-of select="dat:itemid"/>
                </dat:itemid>
                <dat:req_quantity>
                  <xsl:value-of select="dat:quantity"/>
                </dat:req_quantity>
              </dat:createSaleOrder>
            </xsl:for-each>
          </dat:createSaleOrder_batch_req>
        </xsl:when>
        <xsl:when test="$storeid=2">
          <dat:createSaleOrder_gs_batch_req>
            <xsl:for-each select="dat:createSaleOrder/dat:itemlist/dat:item">
              <dat:createSaleOrder_gs>
                <dat:custid>
                  <xsl:value-of select="//dat:custid"/>
                </dat:custid>
                <dat:poid>
                  <xsl:value-of select="//dat:poid"/>
                </dat:poid>
                <dat:custname>
                  <xsl:value-of select="//dat:custname"/>
                </dat:custname>
                <dat:itemid>
                  <xsl:value-of select="dat:itemid"/>
                </dat:itemid>
                <dat:quantity>
                  <xsl:value-of select="dat:quantity"/>
                </dat:quantity>
              </dat:createSaleOrder_gs>
            </xsl:for-each>
          </dat:createSaleOrder_gs_batch_req>
        </xsl:when>
      </xsl:choose>
    </xsl:template>
  </xsl:stylesheet>

