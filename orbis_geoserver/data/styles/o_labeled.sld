<?xml version="1.0" encoding="UTF-8"?>
<sld:StyledLayerDescriptor xmlns="http://www.opengis.net/sld" xmlns:sld="http://www.opengis.net/sld" xmlns:ogc="http://www.opengis.net/ogc" xmlns:gml="http://www.opengis.net/gml" version="1.0.0">
  <sld:NamedLayer>
    <sld:Name>o_labeled</sld:Name>
    <sld:UserStyle>
      <sld:Name>o_labeled</sld:Name>
      <sld:Title>SLD Cook Book: Optimized label placement</sld:Title>
      <sld:FeatureTypeStyle>
        <sld:Name>name</sld:Name>
        <sld:Rule>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:CssParameter name="stroke">#e57d4b</sld:CssParameter>
              <sld:CssParameter name="stroke-dasharray">20.0 5.0 </sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:GraphicStroke>
                <sld:Graphic>
                  <sld:Mark>
                    <sld:Fill>
                      <sld:CssParameter name="fill">#180a03</sld:CssParameter>
                    </sld:Fill>
                  </sld:Mark>
                  <sld:Size>
                    <ogc:Literal>2</ogc:Literal>
                  </sld:Size>
                  <sld:Rotation>
                    <ogc:Literal>45</ogc:Literal>
                  </sld:Rotation>
                </sld:Graphic>
              </sld:GraphicStroke>
              <sld:CssParameter name="stroke-dasharray">15.0 45.0 </sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:GraphicStroke>
                <sld:Graphic>
                  <sld:Mark>
                    <sld:Fill>
                      <sld:CssParameter name="fill">#a04317</sld:CssParameter>
                    </sld:Fill>
                  </sld:Mark>
                  <sld:Size>
                    <ogc:Literal>2</ogc:Literal>
                  </sld:Size>
                  <sld:Rotation>
                    <ogc:Literal>45</ogc:Literal>
                  </sld:Rotation>
                </sld:Graphic>
              </sld:GraphicStroke>
              <sld:CssParameter name="stroke-dasharray">10.0 50.0 </sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:LineSymbolizer>
            <sld:Stroke>
              <sld:GraphicStroke>
                <sld:Graphic>
                  <sld:Mark>
                    <sld:Fill>
                      <sld:CssParameter name="fill">#f1b99e</sld:CssParameter>
                    </sld:Fill>
                  </sld:Mark>
                  <sld:Size>
                    <ogc:Literal>2</ogc:Literal>
                  </sld:Size>
                  <sld:Rotation>
                    <ogc:Literal>45</ogc:Literal>
                  </sld:Rotation>
                </sld:Graphic>
              </sld:GraphicStroke>
              <sld:CssParameter name="stroke-dasharray">5.0 55.0 </sld:CssParameter>
            </sld:Stroke>
          </sld:LineSymbolizer>
          <sld:TextSymbolizer>
            <sld:Label>
              <ogc:PropertyName>label</ogc:PropertyName>
            </sld:Label>
            <sld:LabelPlacement>
              <sld:LinePlacement>
                <sld:PerpendicularOffset>
                  <ogc:Literal>0.0</ogc:Literal>
                </sld:PerpendicularOffset>
              </sld:LinePlacement>
            </sld:LabelPlacement>
            <sld:Fill>
              <sld:CssParameter name="fill">#000000</sld:CssParameter>
            </sld:Fill>
            <sld:VendorOption name="maxAngleDelta">90</sld:VendorOption>
            <sld:VendorOption name="followLine">true</sld:VendorOption>
            <sld:VendorOption name="repeat">300</sld:VendorOption>
            <sld:VendorOption name="maxDisplacement">400</sld:VendorOption>
          </sld:TextSymbolizer>
        </sld:Rule>
      </sld:FeatureTypeStyle>
    </sld:UserStyle>
  </sld:NamedLayer>
</sld:StyledLayerDescriptor>

