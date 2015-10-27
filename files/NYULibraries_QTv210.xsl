<?xml version="1.0"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:mc="https://mediaarea.net/mediaconch" xmlns:ma="https://mediaarea.net/mediaarea" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" version="1.0" extension-element-prefixes="xsi ma">
  <xsl:output encoding="UTF-8" method="xml" version="1.0" indent="yes"/>
  <xsl:template match="ma:MediaArea">
    <MediaConch>
      <xsl:attribute name="version">
        <xsl:text>0.1</xsl:text>
      </xsl:attribute>
      <policyChecks>
        <title>Preservation Master File Recommendations - QuickTime/v210 (NYU Libraries)</title>
        <description/>
        <xsl:for-each select="ma:media">
          <media>
            <xsl:attribute name="ref">
              <xsl:value-of select="./@ref"/>
            </xsl:attribute>
            <policy>
              <xsl:attribute name="title">General Format equals MPEG-4</xsl:attribute>
              <context>
                <xsl:attribute name="field">Format</xsl:attribute>
                <xsl:attribute name="value">MPEG-4</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='General'][1]/ma:Format">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='General'][1]/ma:Format">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">MPEG-4</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">General Format_Profile equals QuickTime</xsl:attribute>
              <context>
                <xsl:attribute name="field">Format_Profile</xsl:attribute>
                <xsl:attribute name="value">QuickTime</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='General'][1]/ma:Format_Profile">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='General'][1]/ma:Format_Profile">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">QuickTime</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">General CodecID equals qt</xsl:attribute>
              <context>
                <xsl:attribute name="field">CodecID</xsl:attribute>
                <xsl:attribute name="value">qt</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='General'][1]/ma:CodecID">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='General'][1]/ma:CodecID">
                    <xsl:call-template name="contains_string">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">qt</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video Format is YUV</xsl:attribute>
              <context>
                <xsl:attribute name="field">Format</xsl:attribute>
                <xsl:attribute name="value">YUV</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Format">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Format">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">YUV</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video CodecID equals v210</xsl:attribute>
              <context>
                <xsl:attribute name="field">CodecID</xsl:attribute>
                <xsl:attribute name="value">v210</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:CodecID">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:CodecID">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">v210</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video Width equals 720 (pixels)</xsl:attribute>
              <context>
                <xsl:attribute name="field">Width</xsl:attribute>
                <xsl:attribute name="value">720</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Width">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Width">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">720</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video Height equals 486 (pixels)</xsl:attribute>
              <context>
                <xsl:attribute name="field">Height</xsl:attribute>
                <xsl:attribute name="value">486</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Height">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Height">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">486</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video DisplayAspectRatio equals 4:3 (1.333)</xsl:attribute>
              <context>
                <xsl:attribute name="field">DisplayAspectRatio</xsl:attribute>
                <xsl:attribute name="value">1.333</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:DisplayAspectRatio">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:DisplayAspectRatio">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">1.333</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video FrameRate equals 29.97 fps (29.970)</xsl:attribute>
              <context>
                <xsl:attribute name="field">FrameRate</xsl:attribute>
                <xsl:attribute name="value">29.970</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:FrameRate">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:FrameRate">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">29.970</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video Standard equals NTSC</xsl:attribute>
              <context>
                <xsl:attribute name="field">Standard</xsl:attribute>
                <xsl:attribute name="value">NTSC</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Standard">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:Standard">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">NTSC</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video ColorSpace equals YUV</xsl:attribute>
              <context>
                <xsl:attribute name="field">ColorSpace</xsl:attribute>
                <xsl:attribute name="value">YUV</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:ColorSpace">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:ColorSpace">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">YUV</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video ChromaSubsampling equals 4:2:2</xsl:attribute>
              <context>
                <xsl:attribute name="field">ChromaSubsampling</xsl:attribute>
                <xsl:attribute name="value">4:2:2</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:ChromaSubsampling">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:ChromaSubsampling">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">4:2:2</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Video BitDepth equals 10 (bits)</xsl:attribute>
              <context>
                <xsl:attribute name="field">BitDepth</xsl:attribute>
                <xsl:attribute name="value">10</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Video'][1]/ma:BitDepth">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Video'][1]/ma:BitDepth">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">10</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Audio Format equals PCM</xsl:attribute>
              <context>
                <xsl:attribute name="field">Format</xsl:attribute>
                <xsl:attribute name="value">PCM</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:Format">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:Format">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">PCM</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Audio CodecID equals sowt</xsl:attribute>
              <context>
                <xsl:attribute name="field">CodecID</xsl:attribute>
                <xsl:attribute name="value">sowt</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:CodecID">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:CodecID">
                    <xsl:call-template name="is_equal">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">sowt</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Audio Channels are greater or equal than 1</xsl:attribute>
              <context>
                <xsl:attribute name="field">Channels</xsl:attribute>
                <xsl:attribute name="value">1</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:Channels">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:Channels">
                    <xsl:call-template name="is_greater_or_equal_than">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">1</xsl:with-param>
                      <xsl:with-param name="field">Channels</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Audio SamplingRate is greater or equal than 48 kHz (48000)</xsl:attribute>
              <context>
                <xsl:attribute name="field">SamplingRate</xsl:attribute>
                <xsl:attribute name="value">48000</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:SamplingRate">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:SamplingRate">
                    <xsl:call-template name="is_greater_or_equal_than">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">48000</xsl:with-param>
                      <xsl:with-param name="field">SamplingRate</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
            <policy>
              <xsl:attribute name="title">Audio BitDepth is greater or equal than 16-bit</xsl:attribute>
              <context>
                <xsl:attribute name="field">BitDepth</xsl:attribute>
                <xsl:attribute name="value">16</xsl:attribute>
              </context>
              <xsl:choose>
                <xsl:when test="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:BitDepth">
                  <xsl:for-each select="ma:MediaInfo/ma:track[@type='Audio'][1]/ma:BitDepth">
                    <xsl:call-template name="is_greater_or_equal_than">
                      <xsl:with-param name="xpath" select="."/>
                      <xsl:with-param name="value">16</xsl:with-param>
                      <xsl:with-param name="field">BitDepth</xsl:with-param>
                    </xsl:call-template>
                  </xsl:for-each>
                </xsl:when>
              </xsl:choose>
            </policy>
          </media>
        </xsl:for-each>
      </policyChecks>
    </MediaConch>
  </xsl:template>
  <xsl:template name="is_true">
    <xsl:param name="xpath"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:choose>
        <xsl:when test="$xpath">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">is not true</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="is_equal">
    <xsl:param name="xpath"/>
    <xsl:param name="value"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="$xpath = $value">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">is not equal</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="is_not_equal">
    <xsl:param name="xpath"/>
    <xsl:param name="value"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="expected">
        <xsl:value-of select="$value"/>
      </xsl:attribute>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="$xpath != $value">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">is equal</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="is_greater_than">
    <xsl:param name="xpath"/>
    <xsl:param name="value"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="expected">
        <xsl:value-of select="$value"/>
      </xsl:attribute>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="$xpath &gt; $value">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">is less than or equal</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="is_less_than">
    <xsl:param name="xpath"/>
    <xsl:param name="value"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="expected">
        <xsl:value-of select="$value"/>
      </xsl:attribute>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="$xpath &lt; $value">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">is greater than or equal</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="is_greater_or_equal_than">
    <xsl:param name="xpath"/>
    <xsl:param name="value"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="expected">
        <xsl:value-of select="$value"/>
      </xsl:attribute>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="$xpath &gt;= $value">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">is less than</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="is_less_or_equal_than">
    <xsl:param name="xpath"/>
    <xsl:param name="value"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="expected">
        <xsl:value-of select="$value"/>
      </xsl:attribute>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="$xpath &lt;= $value">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">is greater than</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="exists">
    <xsl:param name="xpath"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="string-length($xpath) != 0">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">does not exist</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="does_not_exist">
    <xsl:param name="xpath"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="string-length($xpath) = '0'">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">exists</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
  <xsl:template name="contains_string">
    <xsl:param name="xpath"/>
    <xsl:param name="value"/>
    <xsl:element name="test">
      <xsl:if test="../@type">
        <xsl:attribute name="tracktype">
          <xsl:value-of select="../@type"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:if test="../@streamid">
        <xsl:attribute name="streamid">
          <xsl:value-of select="../@streamid"/>
        </xsl:attribute>
      </xsl:if>
      <xsl:attribute name="expected">
        <xsl:value-of select="$value"/>
      </xsl:attribute>
      <xsl:attribute name="actual">
        <xsl:value-of select="$xpath"/>
      </xsl:attribute>
      <xsl:choose>
        <xsl:when test="contains($xpath, $value)">
          <xsl:attribute name="outcome">pass</xsl:attribute>
        </xsl:when>
        <xsl:otherwise>
          <xsl:attribute name="outcome">fail</xsl:attribute>
          <xsl:attribute name="reason">does not contain</xsl:attribute>
        </xsl:otherwise>
      </xsl:choose>
    </xsl:element>
  </xsl:template>
</xsl:stylesheet>
