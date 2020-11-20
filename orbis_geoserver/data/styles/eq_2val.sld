<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>eq_denver.</sld:Name>
    <sld:UserStyle>
      <sld:Name>AtlasStyler 1.9</sld:Name>
      <sld:Title/>
      <sld:FeatureTypeStyle>
        <sld:Name>RASTER_COLORMAP_DISTINCTVALUES:PALETTE#Set3</sld:Name>
        <sld:Title>RasterRulesList_DistinctValues</sld:Title>
        <sld:FeatureTypeName>Feature</sld:FeatureTypeName>
        <sld:Rule>
          <sld:Name>NAMEExplicit color per value</sld:Name>
          <sld:Title>TITLEExplicit color per value</sld:Title>
          <ogc:Filter>
            <ogc:And>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
                <ogc:Literal>ALL_LABEL_CLASSES_ENABLED</ogc:Literal>
              </ogc:PropertyIsEqualTo>
              <ogc:PropertyIsEqualTo>
                <ogc:Literal>1</ogc:Literal>
                <ogc:Literal>1</ogc:Literal>
              </ogc:PropertyIsEqualTo>
            </ogc:And>
          </ogc:Filter>
          <sld:MaxScaleDenominator>1.0E20</sld:MaxScaleDenominator>
          <sld:RasterSymbolizer>
            <sld:Geometry>
              <ogc:PropertyName>geom</ogc:PropertyName>
            </sld:Geometry>
            <sld:ChannelSelection>
              <sld:GrayChannel>
                <sld:SourceChannelName>1</sld:SourceChannelName>
              </sld:GrayChannel>
            </sld:ChannelSelection>
            <sld:ColorMap type="values">
              <sld:ColorMapEntry color="#FFCC33" opacity="0.7" quantity="1.0" label="1.0"/>
              <sld:ColorMapEntry color="#CC0000" opacity="0.7" quantity="2.0" label="2.0"/>
            </sld:ColorMap>
          </sld:RasterSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>