<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:tei="http://www.tei-c.org/ns/1.0" version="2.0">
  <xsl:output method="html" indent="yes"/>
  
  
  
  <xsl:template match="/">
    <html>
      <head>
        <meta charset="utf-8"/>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
        <script src="cartoline.js"></script>
        <link rel="stylesheet" href="stile2.css"></link>
        <link href="https://fonts.googleapis.com/css?family=Pattaya|Nunito" rel="stylesheet"></link>
        <title><xsl:value-of select="descendant::tei:titleStmt/tei:title[@type='main']"/></title>       
      </head>
      <body>
        <!-- Titolo -->
        <h1><xsl:value-of select="//tei:title[@type='main']"/></h1> 
        <!-- Immagini -->
        <!-- Trigger per la finestra modale --> 
        <div style="text-align: center;">
          <img src="7694-005F.jpg" alt="cartolina5" width="20%" height="auto" class="button-green" id="img1"/>
          <img src="7694-027F.jpg" alt="cartolina3" width="30%" height="auto" class="button-green" id="img3"/>
          <img src="7694-010F.jpg" alt="cartolina10" width="20%" height="auto" class="button-green" id="img2"/>
        </div>
        
        <!-- Finestra modale -->
        
        <div class="myModal">
          <img class="close" src="Senzanome.png"/>
          
          <!-- Prima cartolina --> 
          <!-- Contenuto Prima cartolina -->
          
          <div id="modal5" class="modal-content" style="display:none;">
            <!-- Titolo -->
            <h4><xsl:value-of select="//tei:title[@xml:id='title5']"/></h4>
            <!-- Immagine -->
            <div id="contenitoreImmagineModaleCartolina5">
              <xsl:element name="img">
                
                <xsl:attribute name="src">
                  <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='back5']/tei:graphic/[@url]"/>
                </xsl:attribute>
                <xsl:attribute name="id">immagineModaleRetro5</xsl:attribute>
                <xsl:attribute name="usemap">#mappaCartolina5</xsl:attribute>
              </xsl:element>
              <!--MAPPA CARTOLINA 5 -->
              <xsl:element name="map">
                <xsl:attribute name="name">mappaCartolina5</xsl:attribute>
                
                <xsl:for-each select="//tei:surface[@xml:id='back5']/tei:zone">
                  <xsl:element name="area">
                    <xsl:attribute name="shape">rect</xsl:attribute>
                    <xsl:attribute name="coords">
                      <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
                    </xsl:attribute>
                    <xsl:attribute name="class">T<xsl:value-of select="@start"/></xsl:attribute>
                  </xsl:element>
                </xsl:for-each>
                
              </xsl:element>
            </div>
            
            <!-- Testo cartolina -->
            <div id="contenitoreTestoModaleCartolina5">
              <table>
             
                <xsl:for-each select="//tei:div[@xml:id='testoRetroCartolina5']/*">
                <xsl:element name="tr">
                <xsl:element name="td">
                  <xsl:attribute name="class">T#<xsl:value-of select="@xml:id"/></xsl:attribute>
                  <xsl:value-of select="."/>
                </xsl:element>
                </xsl:element>
              </xsl:for-each>
                
              </table>
            </div>
            <!--DIV A SCOMPARSA  -->
            <div ><p id="flip5" class="flip">Informazioni sulla cartolina <xsl:value-of select="//tei:title[@xml:id='title5']"/></p> </div>
            <div id="scomparsa5" class="panel">
              <!-- INFORMAZIONI MITTENTE - DESTINATARIO -->
              <xsl:for-each select="//tei:correspDesc[@xml:id='corresp5']">
                <h5>Mittente:</h5>
                <p><xsl:value-of select="tei:correspAction[@type='sent']/tei:persName"/></p>
                <p>Città: <xsl:value-of select="tei:correspAction[@type='sent']/tei:placeName"/></p>
                <p>Data: <xsl:value-of select="tei:correspAction[@type='sent']/tei:date"/></p>
                <h5>Destinatario:</h5>
                <p><xsl:value-of select="tei:correspAction[@type='received']/tei:persName"/></p>
                <p>Città: <xsl:value-of select="tei:correspAction[@type='received']/tei:placeName"/></p>
              </xsl:for-each>
              <xsl:for-each select="//tei:notesStmt[@xml:id='notesCartolina5']/tei:note">
                <p class="note5"><xsl:value-of select="."/></p>
              </xsl:for-each>
              <h4>Numero catalogazione:</h4><xsl:value-of select="//tei:div[@xml:id='Archivio1']//tei:idno"/>
            </div>
            
          </div>
          
          <!-- ___________________________________________________________________________________________-->
          <!-- Seconda cartolina -->
          
          <!-- Cotenuto Seconda cartolina -->
          <div id="modal10" class="modal-content" style="display:none;">
            <h4><xsl:value-of select="//tei:title[@xml:id='title10']"/></h4>
            <!-- IMMAGINE -->
            <div id="contenitoreImmagineModaleCartolina10">
              <xsl:element name="img">
                
                <xsl:attribute name="src">
                  <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='back10']/tei:graphic/[@url]"/>
                </xsl:attribute>
                <xsl:attribute name="id">immagineModaleRetro10</xsl:attribute>
                <xsl:attribute name="usemap">#mappaCartolina10</xsl:attribute>
              </xsl:element>
              <!--MAPPA CARTOLINA 10 -->
              <xsl:element name="map">
                <xsl:attribute name="name">mappaCartolina10</xsl:attribute>
                
                <xsl:for-each select="//tei:surface[@xml:id='back10']/tei:zone">
                  <xsl:element name="area">
                    <xsl:attribute name="shape">rect</xsl:attribute>
                    <xsl:attribute name="coords">
                      <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
                    </xsl:attribute>
                    <xsl:attribute name="class">T<xsl:value-of select="@start"/></xsl:attribute>
                  </xsl:element>
                </xsl:for-each>
              </xsl:element>
              
            </div>          
            
            <!-- Testo cartolina -->
            
            <div id="contenitoreTestoModaleCartolina10">
              <table>
                <tr>
                  <xsl:for-each select="//tei:dateline[@xml:id='data2']">
                    <td>
                      <xsl:attribute name="class">T#<xsl:value-of select="@xml:id"/></xsl:attribute>
                      <xsl:value-of select="tei:placeName"/>,
                      <xsl:value-of select="tei:distinct"/>, 
                      <xsl:value-of select="tei:date"/>
                    </td>
                  </xsl:for-each>
                  
                </tr>
                <xsl:for-each select="//tei:div[@xml:id='testoresto10']/*"> <!-- Prendo tutti i nodi figli di questo tag -->
                
                  <xsl:element name="tr">
                  <xsl:element name="td">
                    <xsl:attribute name="class">T#<xsl:value-of select="@xml:id"/></xsl:attribute>
                    <xsl:value-of select="."/>
                  </xsl:element>
                </xsl:element>
              </xsl:for-each>
              </table>
            </div>
            
            <!--DIV A SCOMPARSA  -->
            <div ><p id="flip10" class="flip">Informazioni sulla cartolina <xsl:value-of select="//tei:title[@xml:id='title10']"/></p> </div>
            <div id="scomparsa10" class="panel">
              <!-- INFORMAZIONI MITTENTE - DESTINATARIO -->
              <xsl:for-each select="//tei:correspDesc[@xml:id='corresp10']">
                <h5>Mittente:</h5>
                <p><xsl:value-of select="tei:correspAction[@type='sent']/tei:persName"/></p>
                <p>Città: <xsl:value-of select="tei:correspAction[@type='sent']/tei:placeName"/></p>
                <p>Data: <xsl:value-of select="tei:correspAction[@type='sent']/tei:date"/></p>
                <h5>Destinatario:</h5>
                <p><xsl:value-of select="tei:correspAction[@type='received']/tei:persName"/></p>
                
              </xsl:for-each>
              <!-- NOTE -->
              <xsl:for-each select="//tei:notesStmt[@xml:id='note10']/tei:note">
                <p class="note10"><xsl:value-of select="."/></p>
              </xsl:for-each>
              <!-- NUMERO CATALOGAZIONE -->
              <h5>Numero catalogazione:</h5><xsl:value-of select="//tei:div[@xml:id='Archivio2']//tei:idno"/>
              <h5>Forme desuete presenti nella cartolina</h5>
              <ul>
                <xsl:for-each select="//tei:entry[@xml:id='des10']/tei:sense">
                  <li><xsl:value-of select="tei:distinct"/> > <xsl:value-of select="tei:xr/tei:ref"/></li>
                </xsl:for-each>
              </ul>
            </div>
          </div>
          <!-- Fine seconda cartolina  -->
          
          <!-- ___________________________________________________________________________________________-->
          <!-- Terza cartolina -->
          <!-- Contenuto terza cartolina -->
          <div id="modal27" class="modal-content" style="display:none;">
            <h4><xsl:value-of select="//tei:title[@xml:id='title27']"/></h4>
            <!-- IMMAGINE -->
            <div id="contenitoreImmagineModaleCartolina27">
              <xsl:element name="img">
                
                <xsl:attribute name="src">
                  <xsl:value-of select="//tei:facsimile/tei:surface[@xml:id='back27']/tei:graphic/[@url]"/>
                </xsl:attribute>
                <xsl:attribute name="id">immagineModaleRetro27</xsl:attribute>
                <xsl:attribute name="usemap">#mappaCartolina27</xsl:attribute>
              </xsl:element>
              <!--MAPPA CARTOLINA 27 -->
              <xsl:element name="map">
                <xsl:attribute name="name">mappaCartolina27</xsl:attribute>
                
                <xsl:for-each select="//tei:surface[@xml:id='back27']/tei:zone">
                  <xsl:element name="area">
                    <xsl:attribute name="shape">rect</xsl:attribute>
                    <xsl:attribute name="coords">
                      <xsl:value-of select="@ulx"/>,<xsl:value-of select="@uly"/>,<xsl:value-of select="@lrx"/>,<xsl:value-of select="@lry"/>
                    </xsl:attribute>
                    <xsl:attribute name="class">T<xsl:value-of select="@start"/></xsl:attribute>
                  </xsl:element>
                </xsl:for-each>
              </xsl:element>
              
            </div>          
            
            <!-- Testo cartolina -->
            
            <div id="contenitoreTestoModaleCartolina27">
              <table>
                <tr>
                  <xsl:for-each select="//tei:dateline[@xml:id='data3']">
                    <td>
                      <xsl:attribute name="class">T#<xsl:value-of select="@xml:id"/></xsl:attribute>
                      <xsl:value-of select="tei:placeName"/>,
                      <xsl:value-of select="tei:distinct"/>, 
                      <xsl:value-of select="tei:date"/>
                    </td>
                  </xsl:for-each>
                  
                </tr>
                <xsl:for-each select="//tei:div[@xml:id='testoresto_3']/*"> <!-- Prendo tutti i nodi figli di questo tag -->
                  
                  <xsl:element name="tr">
                    <xsl:element name="td">
                      <xsl:attribute name="class">T#<xsl:value-of select="@xml:id"/></xsl:attribute>
                      <xsl:value-of select="."/>
                    </xsl:element>
                  </xsl:element>
                </xsl:for-each>
              </table>
            </div>
            
            <!--DIV A SCOMPARSA  -->
            <div ><p id="flip27" class="flip">Informazioni sulla cartolina <xsl:value-of select="//tei:title[@xml:id='title27']"/></p> </div>
            <div id="scomparsa27" class="panel">
              <!-- INFORMAZIONI MITTENTE - DESTINATARIO -->
              <xsl:for-each select="//tei:correspDesc[@xml:id='corresp27']">
                <h5>Mittente:</h5>
                <p><xsl:value-of select="tei:correspAction[@type='sent']/tei:persName"/></p>
                <p>Città: <xsl:value-of select="tei:correspAction[@type='sent']/tei:placeName"/></p>
                <p>Data: <xsl:value-of select="tei:correspAction[@type='sent']/tei:date"/></p>
                <h5>Destinatario:</h5>
                <p><xsl:value-of select="tei:correspAction[@type='received']/tei:persName"/></p>
                <p>Città: <xsl:value-of select="tei:correspAction[@type='received']/tei:placeName"/></p>
              </xsl:for-each>
              <!-- NOTE -->
              <xsl:for-each select="//tei:notesStmt[@xml:id='note27']/tei:note">
                <p class="note27"><xsl:value-of select="."/></p>
              </xsl:for-each>
              <!-- NUMERO CATALOGAZIONE -->
              <h5>Numero catalogazione:</h5><xsl:value-of select="//tei:div[@xml:id='Archivio3']//tei:idno"/>
            </div>
          </div>
          <!-- Fine terza cartolina -->
        </div>
        <!-- Fine finestra modale --> 
        
        
        <footer>
          <div class="sinistra">
          <!-- CHI SIAMO-->
          <div class="anna">
            <a href="mailto:nikki1311@hotmail.it">
              <img class="anna1" src="anna.jpg" alt="anna"/>
            </a> 
            <h3>Anna Conforti</h3>
          </div>
          <div class="ilaria">
            <a href="mailto:ilaria_fantoni@outlook.it">
              <img class="ilaria1" src="ilaria.jpg" alt="ilaria" height="100px" width="100px"/>
            </a> 
            <h3>Ilaria Fantoni</h3>
          </div>
          <div class="luna">
            <a href="mailto:luna.lully@hotmail.it">
              <img class="luna1" src="luna.jpg" alt="luna" height="100px" width="100px"/>
            </a> 
            <h3>Luna Puccia</h3>
          </div>
          </div>
          
          <div class="destra">
            <p><b>Codficato e compilato da: </b> <xsl:value-of select="//tei:respStmt/tei:name[@xml:id='Castagneto']"/></p>
            <p><b>Responsabile scientifico: </b> <xsl:value-of select="//tei:respStmt/tei:name[@xml:id='GP']"/> - <xsl:value-of select="//tei:respStmt/tei:name[@xml:id='ES']"/> </p>
            <p><b>Funzionario responsabile: </b> <xsl:value-of select="//tei:respStmt/tei:name[@xml:id='ER']"/></p>
          </div>
        </footer>    
        
      </body>
    </html>
    
    
  </xsl:template>
  
  
</xsl:stylesheet>