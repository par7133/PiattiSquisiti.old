<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
		xmlns:xlink="http://www.w3.org/1999/xlink"
		version="1.0"> 

<xsl:output method="html" version="4"/>

<!-- File name: index.xml 

 Copyright 2021, 2024 5 Mode. All right reserved.
 
 This file is part of PiattiSquisiti.

 starters.xsl
  
 PiattiSquisiti starters stylesheet.
 
 @author Daniele Bonini <my25mb@aol.com>
 @copyrights (c) 2021, 2024 5 Mode     

-->

	<xsl:template match="CONTENT">

    <HTML>
	  <HEAD>

      <TITLE>Pork: My Piatti Squissiti...</TITLE>
	  
	  	<meta http-equiv="Content-Type" content="text/html; charset=windows-1252"/>
		  <meta name="description" content="Welcome to my PiattiSquisiti!"/>
	  
	    <link rel="shortcut icon" href="favicon.ico"/>
	  	
      <link href="/css/style.css" type="text/css" rel="stylesheet"></link>
      
      <script src="/js/jquery-3.6.0.min.js" type="text/javascript"></script>
      
	  	<script>
	  	<![CDATA[

      ]]>
		  </script>

	  </HEAD>
	  
	  <BODY>

    <div id="HCsplash" style="padding-top: 160px; text-align:center;color:#ffffff;display:none;">
       <div id="myh1"><H1>Piatti Squisiti</H1></div><br/>
       <img src="/res/logo2.png" style="width:310px;"/>
    </div>

		<div id="content" align="center">

    <div class="header">
      <a href="/">
        <img id="logo" src="/res/logo.png"/>
      </a>
    </div>

    <br/>

    <div id="menu">
       <div class="menubm" onclick="popupMenu1()" style="cursor:pointer;">Recipes</div>
       <div class="menubm" onclick="popupMenu2()" style="cursor:pointer;width:100px;">by Material</div>
       <div class="menubm" onclick="popupMenu3()" style="cursor:pointer;width:80px;">by Place</div>
       <div class="menubm" style="cursor:pointer;width:70px;"><a href="etc.xml" class="muaa">Videos</a></div>
       <div class="menubm" style="cursor:pointer;width:50px;"><a href="etc.xml" class="muaa">Fun</a></div>
       <div class="menubm" style="cursor:pointer;width:120px;"><a href="etc.xml" class="muaa">What is this?</a></div>
       <div class="menubm" style="cursor:pointer;width:80px;"><a href="about.xml" class="muaa">Who we are</a></div>
    </div>
    
    <div id="burgerMenu1" class="burgermenu" style="display: none; z-index:99997; border: 0px solid yellow;">
      <div id="muStarters" class="vmuBurgerMenu"><a href="/starters.xml" style="color:#FFFFFF;">Starters</a>&#8201;</div>
      <div id="muMainFirsts" class="vmuBurgerMenu"><a href="/firsts.xml" style="color:#FFFFFF;">Main Firsts</a>&#8201;</div>
      <div id="muMainSeconds" class="vmuBurgerMenu"><a href="/seconds.xml" style="color:#FFFFFF;">Main Seconds</a>&#8201;</div>
      <div id="muSideDishes" class="vmuBurgerMenu"><a href="/sides.xml" style="color:#FFFFFF;">Side Dishes</a>&#8201;</div>
      <div id="muDesserts" class="vmuBurgerMenu"><a href="/desserts.xml" style="color:#FFFFFF;">Desserts</a>&#8201;</div>
      <div>&#8201;</div>
    </div> 

    <div id="burgerMenu2" class="burgermenu" style="display: none; z-index:99997; border: 0px solid yellow;">
      <div id="muAlmond" class="vmuBurgerMenu"><a href="/almond.xml" style="color:#FFFFFF;">Almond</a>&#8201;</div>
      <div id="muBechamel" class="vmuBurgerMenu"><a href="/bechamel.xml" style="color:#FFFFFF;">Bechamel</a>&#8201;</div>
      <div id="muCheese" class="vmuBurgerMenu"><a href="/cheese.xml" style="color:#FFFFFF;">Cheese</a>&#8201;</div>
      <div id="muOnion" class="vmuBurgerMenu"><a href="/onion.xml" style="color:#FFFFFF;">Onion</a>&#8201;</div>
      <div id="muRise" class="vmuBurgerMenu"><a href="/rise.xml" style="color:#FFFFFF;">Rise</a>&#8201;</div>
      <div id="muRagu" class="vmuBurgerMenu"><a href="/ragu.xml" style="color:#FFFFFF;">Ragù</a>&#8201;</div>
      <div id="muSalumi" class="vmuBurgerMenu"><a href="/salumi.xml" style="color:#FFFFFF;">Salumi</a>&#8201;</div>
      <div>&#8201;</div>
    </div>     

    <div id="burgerMenu3" class="burgermenu" style="display: none; z-index:99997; border: 0px solid yellow;">
      <div id="muBologna" class="vmuBurgerMenu"><a href="/bologna.xml" style="color:#FFFFFF;">Bologna</a>&#8201;</div>
      <div id="muModena" class="vmuBurgerMenu"><a href="/modena.xml" style="color:#FFFFFF;">Modena</a>&#8201;</div>
      <div id="muFerrara" class="vmuBurgerMenu"><a href="/ferrara.xml" style="color:#FFFFFF;">Ferrara</a>&#8201;</div>
      <div>&#8201;</div>
    </div>     
    
		<br/><br/><br/><br/><br/>

		<table border="0" style="width:80%; max-width:550px;">
      
		<xsl:for-each select="ITEM[TYPE='TEXT']">
		
			<xsl:sort select="INDEX" data-type="number" order="descending"/>
            
      <tr>
        <td halign="center" style="max-height:160px; text-align:left; border-bottom: 0px solid transparent;">
          
          <img class="icon" src="" align="left" />
          
          <div class="recipe" style="margin-left:140px;min-height:130px; border: 1px solid lightgray; border-bottom: 0px solid lightgray; padding:10px;">
            <span class="title"><span class="name"><xsl:value-of select="NAME"/></span>, from 
            
            <a>
              <xsl:attribute name="target">_self</xsl:attribute> 
              <xsl:attribute name="href"><xsl:value-of select="PLACE"/>.xml</xsl:attribute>
              <xsl:attribute name="style">text-decoration:none;</xsl:attribute>
              <span class="place"><xsl:value-of select="PLACE"/></span>
            </a>

            </span>
            <br/>
            <span class="material"><span class="material-title">Material</span>: <span class="material-text"><xsl:value-of select="DESC_MATERIAL"/></span>&#8201;(<span class="material-hints">
              
            <a>
              <xsl:attribute name="target">_self</xsl:attribute> 
              <xsl:attribute name="href"><xsl:value-of select="MATERIAL1"/>.xml</xsl:attribute>
              <xsl:attribute name="style">text-decoration:none;</xsl:attribute>
              <span class="material2"><xsl:value-of select="MATERIAL1"/></span>
            </a>
            
            ,&#8201;                            
            
            <a>
              <xsl:attribute name="target">_self</xsl:attribute> 
              <xsl:attribute name="href"><xsl:value-of select="MATERIAL2"/>.xml</xsl:attribute>
              <xsl:attribute name="style">text-decoration:none;</xsl:attribute>
              <span class="material2"><xsl:value-of select="MATERIAL2"/></span>
            </a>                            
                                                            
            </span>)</span>
            
            <br/>
            
            <span class="preparation"><span class="preparation-title">Preparation</span>: <span class="preparation-text"><xsl:value-of select="DESC_PREPARATION"/></span></span><br/>
            <span class="cooking"><span class="cooking-title">Cooking</span>: <span class="cooking-text"><xsl:value-of select="DESC_COOKING"/></span></span><br/>
            <span class="serving"><span class="serving-title">Serving</span>: <span class="serving-text"><xsl:value-of select="DESC_SERVING"/></span></span><br/>
          </div>
          
          <br/><br/><br/>
          
        </td>
      </tr>

 		</xsl:for-each>
    
    <tr>
    <td halign="center" style="text-align:center;">      

    <br/><br/>

    <img src="/res/etc.png"/>
    
		<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
		
		<SPAN STYLE="color: #000000; font-size: 14px;">
		<![CDATA[
		 Copyrights  
		]]>
    </SPAN>

    <a>
      <xsl:attribute name="target">_blank</xsl:attribute>
      <xsl:attribute name="style">color: #000000; font-size: 14px</xsl:attribute> 
      <xsl:attribute name="href">http://5mode.com</xsl:attribute>
      <xsl:attribute name="title">5 Mode</xsl:attribute>
      5 Mode
    </a>

		<SPAN STYLE="color: #000000; font-size: 14px;">
		<![CDATA[
     2021, 2024 - All rights reserved
		]]>
    </SPAN>
    
    <br/><br/>
    
    	 <a>
	      	<xsl:attribute name="target">_blank</xsl:attribute> 
          <xsl:attribute name="href">http://5mode.com</xsl:attribute>
          <xsl:attribute name="title">5 Mode</xsl:attribute>
          	<img >
		      		<xsl:attribute name="border">0</xsl:attribute> 
		  		    <xsl:attribute name="src">/res/5mode.png</xsl:attribute>
		  	    	<xsl:attribute name="width">80</xsl:attribute>
		  		    <xsl:attribute name="height"></xsl:attribute>
			     </img> 
      </a>
      
      <br/><br/><br/><br/><br/><br/><br/><br/><br/>  
            
		</td>
		</tr>
		</table>

    </div>


		<script>
   	<![CDATA[
      
      function showPiglets() {
        pigi = 1;
        $(".icon").each(function() {
          if (pigi > 10 ) {
            pigi=1;
          }
          if (pigi < 10 ) {
            spigi="0"+pigi;
          } else {
            spigi="10";
          }
          if ((pigi % 2) > 0 ) {
            $(this).get(0).align = "left";
            document.getElementsByClassName("recipe")[pigi-1].style.marginLeft = "140px";
            document.getElementsByClassName("recipe")[pigi-1].style.marginRight = "";
          } else {
            $(this).get(0).align = "right";
            document.getElementsByClassName("recipe")[pigi-1].style.marginRight = "140px";
            document.getElementsByClassName("recipe")[pigi-1].style.marginLeft = "";
          }
          $(this).get(0).src = "/res/piglet" + spigi + ".png";
          pigi++;
        });
      }
      
      var burgerMenuVisible=false;
      
      function ResetMenu() {
        $(".burgermenu").each(function(){
          $(this).hide();
          $(this).css("z-index", "99992");
        });
      }
      
      function popupMenu1() {
        if (!burgerMenuVisible) {
          menuRect = document.getElementsByClassName("menubm")[0].getBoundingClientRect(); 
          $("#burgerMenu1").show();
          $("#burgerMenu1").css("z-index", "99999");
          $("#burgerMenu1").css("top", parseInt(menuRect.top+33));
          $("#burgerMenu1").css("left", parseInt(menuRect.left-90));
        } else {
          ResetMenu();
        }
        burgerMenuVisible=!burgerMenuVisible;
      } 

      function popupMenu2() {
        if (!burgerMenuVisible) {
          menuRect = document.getElementsByClassName("menubm")[1].getBoundingClientRect(); 
          $("#burgerMenu2").show();
          $("#burgerMenu2").css("z-index", "99999");
          $("#burgerMenu2").css("top", parseInt(menuRect.top+33));
          $("#burgerMenu2").css("left", parseInt(menuRect.left-70));
        } else {
          ResetMenu();
        }
        burgerMenuVisible=!burgerMenuVisible;
      } 

      function popupMenu3() {
        if (!burgerMenuVisible) {
          menuRect = document.getElementsByClassName("menubm")[1].getBoundingClientRect(); 
          $("#burgerMenu3").show();
          $("#burgerMenu3").css("z-index", "99999");
          $("#burgerMenu3").css("top", parseInt(menuRect.top+33));
          $("#burgerMenu3").css("left", parseInt(menuRect.left+10));
        } else {
          ResetMenu();
        }
        burgerMenuVisible=!burgerMenuVisible;
      } 

      function hideMenu() {
        $("#burgerMenu").hide();
        burgerMenuVisible=false;
      } 
      
      function hideTitle() {
        $("#myh1").hide("slow");
      }

      function startApp() {
        $("#HCsplash").hide("slow");
        $(document.body).css("background","url('/res/demoris_ad.png')");
        $("#content").show();
      }			

      window.addEventListener("load", function() {
        ////$(document.body).css("background","#ffffff");
        //$("#HCsplash").css("color","#000000");
        //$("#HCsplash").show("slow");	  
        //setTimeout("hideTitle()", 2000);
        //setTimeout("startApp()", 4000);
      }, true);

      window.addEventListener("load", function() {
        if (window.innerWidth<850) {
          $("p").css("font-size","1.5vw");
        } else {
          $("p").css("font-size","11px");
        }
        
        showPiglets();
      }, true);

      window.addEventListener("resize", function() {
        if (window.innerWidth<850) {
          $("p").css("font-size","1.5vw");
        } else {
          $("p").css("font-size","11px");
        }
      }, true);      
                  

    ]]>
		</script>

<!-- Yandex.Metrika counter -->
<script>
<![CDATA[
(function(m,e,t,r,i,k,a){m[i]=m[i]||function(){(m[i].a=m[i].a||[]).push(arguments)};
   m[i].l=1*new Date();
   for (var j = 0; j < document.scripts.length; j++) {if (document.scripts[j].src === r) { return; }}
   k=e.createElement(t),a=e.getElementsByTagName(t)[0],k.async=1,k.src=r,a.parentNode.insertBefore(k,a)})
   (window, document, "script", "https://mc.yandex.ru/metrika/tag.js", "ym");

   ym(94522487, "init", {
        clickmap:true,
        trackLinks:true,
        accurateTrackBounce:true
   });
]]>
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/94522487" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
		  
	  </BODY>
	  </HTML>     	
	
	</xsl:template>

</xsl:stylesheet> 
