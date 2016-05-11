function map_init_basic (map, options) {

       var marker1 = L.marker([44.518036, 3.499044]).addTo(map);
       var marker2 = L.marker([44.372669, 2.579284]).addTo(map);
       var marker3 = L.marker([44.780765, 3.693541]).addTo(map);
       var marker4 = L.marker([44.514502, 3.477056]).addTo(map);
       var marker5 = L.marker([44.518168, 3.499635]).addTo(map);
       var marker6 = L.marker([44.398673, 3.523776]).addTo(map);
       var marker7 = L.marker([44.528288, 3.466682]).addTo(map);
       var marker8 = L.marker([44.528306, 3.466680]).addTo(map);
       var marker9 = L.marker([44.559026, 3.499538]).addTo(map);


       marker1.bindPopup("<b>Alban TIBERGHIEN</b><br>TiersTruck-Social numérique<br> 48000 Mende").openPopup();

       marker2.bindPopup("<b>Dominique SERIEYS</b></br><a href='http://sbsaveyron.com'>sbsaveyron</a> : Artisan bijoutier, <br>13 bd des Balquières, 12850 ONET LE "  ).openPopup();

       marker3.bindPopup("<b>Olivier DE BECHEVEL</b></br><a href='http://www.or-des-chemins.fr/'>or-des-chemins</a> :Matériel de photocopieurs, de reprographie<br>Ld Sainte Colombe de Montauroux 48600 Grandrieu"  ).openPopup();

       marker4.bindPopup("<b>Eric PRATS</b></br>Tridome:Chef de secteurs<br>Ld Sainte Colombe de Montauroux 48600 Grandrieu"  ).openPopup();

        marker5.bindPopup("<b>Julien VABRE</b></br><a href='http://lopia.fr'>Lopia</a> : Dépannage informatique <br>1 r Droite, 48000 MENDE"  ).openPopup();

        marker6.bindPopup("<b>Luc FONTAINE</b></br><a href='http://kyubeek.com'>Kyubeek</a> : Veille informatique <br> 48320 Ispagnac"  ).openPopup();

        marker7.bindPopup("<b>Ludovic TOUSSAIN</b></br><a href='http://absolu-wood.com/'>Absolu-wood</a> : savoir-faire innovants<br>48000 Mende"  ).openPopup();

        marker8.bindPopup("<b>Sebastien OZIOL</b></br><a href='http://lozere-developpement.com'>Lozère développement</a> : agence promotion web<br> 12 Rue Albert Einstein 48000 Mende"  ).openPopup();

        marker9.bindPopup("<b>Nicolas DELRIEU</b></br>DELRIEU INGENIERIE : BE, conception 3D, dessin indus, calculs RDM, calculs Eurocodes<br>chemin du Pous 48000 CHASTEL-NOUVEL"  ).openPopup();

        mymap.on('click', onMapClick);
   }
