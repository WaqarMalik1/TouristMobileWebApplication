<?xml version="1.0" encoding="UTF-8"?><!-- DWXMLSource="TouristApp.xml" -->
<!DOCTYPE xsl:stylesheet  [
	<!ENTITY nbsp   "&#160;">
	<!ENTITY copy   "&#169;">
	<!ENTITY reg    "&#174;">
	<!ENTITY trade  "&#8482;">
	<!ENTITY mdash  "&#8212;">
	<!ENTITY ldquo  "&#8220;">
	<!ENTITY rdquo  "&#8221;"> 
	<!ENTITY pound  "&#163;">
	<!ENTITY yen    "&#165;">
	<!ENTITY euro   "&#8364;">
    ]>
    
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="html" encoding="UTF-8" doctype-public="-//W3C//DTD XHTML 1.0 Transitional//EN" doctype-system="http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"/>
<xsl:template match="/">

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<meta charset="utf-8"/>
	<title>jQuery Mobile Page</title>

	<meta name="viewport" content="width=device-width, initial-scale=1"/>
<link rel="stylesheet" href="css/themes/my-custom-theme.css" />
	<link rel="stylesheet" href="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.css"/> 
	<script src="http://code.jquery.com/jquery-1.9.1.min.js"></script> 
	<script src="http://code.jquery.com/mobile/1.3.2/jquery.mobile-1.3.2.min.js"></script>
	
    <style>
     #map-canvas {
        height: 800px;
       width: auto;
      }
	  #pic{text-align: center}
    </style>
    <script src="https://maps.googleapis.com/maps/api/js?v=3.exp&amp;sensor=false"></script>
    
</head>
<body>

<div data-role="page" id="HOMEPAGE1" data-theme="e">
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
</div>
    
<BR />
<BR />
<BR />
<BR />
<BR />
<BR />

<div data-role="content">
<div data-role="navbar" data-iconpos="top">
<ul>
<li>
<a href="#ATTRACTIONSPAGE" data-transition="fade" data-theme="b" data-icon="">
ATTRACTIONS
</a>
</li>
</ul>
</div>

<BR />
<BR />

<div data-role="navbar" data-iconpos="top">
<ul>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>   
   
<BR />

<div id="pic">
<img src="http://gaitanaki.files.wordpress.com/2010/09/the-shard-london-aerial-view-2012_thumb1.jpg" /> 
</div>
<div data-theme="a" data-role="footer" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</div>


<!-- Attractions Page -->

<div id="ATTRACTIONSPAGE" data-role="page" data-theme="e">
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
<div data-role="content">
<div data-role="navbar" data-iconpos="bottom">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="b" data-icon="arrow-l">
Menu
</a>
</li>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>

<div data-role="navbar" data-iconpos="left">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="a" data-icon="back">
CLICK HERE TO GO BACK
</a>
</li>
</ul>
</div>
</div>

<br />
<br />
<br />

<ul data-role="listview" data-inset="true" data-divider-theme="b">
<li role="heading" data-role="list-divider">
LOCAL ATTRACTIONS
</li>
<li data-theme="b">
<a href="#BUCKINGHAMPALACEPAGE" data-transition="slide">
BUCKINGHAM PALACE
</a>
</li>
<li data-theme="b">
<a href="#LONDONEYEPAGE" data-transition="slide">
LONDON EYE
</a>
</li>
<li data-theme="b">
<a href="#BIGBENPAGE" data-transition="slide">
BIG BEN
</a>
</li>
<li data-theme="b">
<a href="#THEBRITISHMUSEUMPAGE" data-transition="slide">
THE BRITISH MUSEUM
</a>
</li>
<li data-theme="b">
<a href="#THETOWEROFLONDONPAGE" data-transition="slide">
THE TOWER OF LONDON
</a>
</li>
</ul>

<div data-role="footer" data-theme="a" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</div>

<!--BUCKINGHAMPALACE PAGE-->
 
<div data-role="page" id="BUCKINGHAMPALACEPAGE" data-theme="e">
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
<div data-role="content">
<div data-role="navbar" data-iconpos="bottom">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="b" data-icon="arrow-l">
Menu
</a>
</li>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>

<div data-role="navbar" data-iconpos="left">
<ul>
<li>
<a href="#ATTRACTIONSPAGE" data-transition="fade" data-theme="a" data-icon="back">
CLICK HERE TO GO BACK
</a>
</li>
</ul>
</div>
</div>
<br />
<br />
<br />

<div data-role="content">
<xsl:for-each select="Tourist_Attractions/Attractionsone">

<div data-role="collapsible" data-collapsed="false" data-content-theme="a" data-theme="b" >
<h3>
NAME OF THE ATTRACTION
</h3>
<xsl:value-of select="Name"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 1
</h3>
<xsl:value-of select="Address_Line1"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 2
</h3>
<xsl:value-of select="Address_Line2"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
TOWN
</h3>
<xsl:value-of select="Town"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
POST CODE
</h3>
<xsl:value-of select="Post_Code"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PICTURE OF ATTRACTION
</h3>
<img >
<xsl:attribute name="src">
<xsl:value-of select="Picture_Of_Attraction"/>
</xsl:attribute>
</img>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LOCAL TUBE STATIONS
</h3>
<xsl:value-of select="Local_Tube_Stations"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PRICE
</h3>
<xsl:value-of select="Attraction_Price"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
SHORT DESCRIPTION
</h3>
<xsl:value-of select="Short_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LONG DESCRIPTION
</h3>
<xsl:value-of select="Long_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
OPENING HOURS
</h3>
<xsl:value-of select="Attraction_Oppening_Hours"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
CATEGORY
</h3>
<xsl:value-of select="Category_Of_Attraction"/>
</div>
<div data-theme="a" data-role="footer" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</xsl:for-each>
</div>
</div>

<!--London Eye Page-->
 
<div data-role="page" id="LONDONEYEPAGE"  data-theme="e">
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
<div data-role="content">
<div data-role="navbar" data-iconpos="bottom">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="b" data-icon="arrow-l">
Menu
</a>
</li>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>

<div data-role="navbar" data-iconpos="left">
<ul>
<li>
<a href="#ATTRACTIONSPAGE" data-transition="fade" data-theme="a" data-icon="back">
CLICK HERE TO GO BACK
</a>
</li>
</ul>
</div>
</div>
<br />
<br />
<br />

<div data-role="content">
<xsl:for-each select="Tourist_Attractions/Attractionstwo">

<div data-role="collapsible" data-collapsed="false" data-content-theme="a" data-theme="b">
<h3>
NAME OF THE ATTRACTION
</h3>
<xsl:value-of select="Name"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 1
</h3>
<xsl:value-of select="Address_Line1"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 2
</h3>
<xsl:value-of select="Address_Line2"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
TOWN
</h3>
<xsl:value-of select="Town"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
POST CODE
</h3>
<xsl:value-of select="Post_Code"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PICTURE OF ATTRACTION
</h3>
<img >
<xsl:attribute name="src">
<xsl:value-of select="Picture_Of_Attraction"/>
</xsl:attribute>
</img>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LOCAL TUBE STATIONS
</h3>
<xsl:value-of select="Local_Tube_Stations"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PRICE
</h3>
<xsl:value-of select="Attraction_Price"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
SHORT DESCRIPTION
</h3>
<xsl:value-of select="Short_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LONG DESCRIPTION
</h3>
<xsl:value-of select="Long_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
OPENING HOURS
</h3>
<xsl:value-of select="Attraction_Oppening_Hours"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
CATEGORY
</h3>
<xsl:value-of select="Category_Of_Attraction"/>
</div>
<div data-theme="a" data-role="footer" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</xsl:for-each>
</div>
</div>
 
<!--Big Ben Page-->
 
<div data-role="page" id="BIGBENPAGE"  data-theme="e">
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
<div data-role="content">
<div data-role="navbar" data-iconpos="bottom">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="b" data-icon="arrow-l">
Menu
</a>
</li>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>

<div data-role="navbar" data-iconpos="left">
<ul>
<li>
<a href="#ATTRACTIONSPAGE" data-transition="fade" data-theme="a" data-icon="back">
CLICK HERE TO GO BACK
</a>
</li>
</ul>
</div>
</div>

<br />
<br />
<br />

<div data-role="content">
<xsl:for-each select="Tourist_Attractions/Attractionsthree">

<div data-role="collapsible" data-collapsed="false" data-content-theme="a" data-theme="b">
<h3>
NAME OF THE ATTRACTION
</h3>
<xsl:value-of select="Name"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 1
</h3>
<xsl:value-of select="Address_Line1"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 2
</h3>
<xsl:value-of select="Address_Line2"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
TOWN
</h3>
<xsl:value-of select="Town"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
POST CODE
</h3>
<xsl:value-of select="Post_Code"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PICTURE OF ATTRACTION
</h3>
<img >
<xsl:attribute name="src">
<xsl:value-of select="Picture_Of_Attraction"/>
</xsl:attribute>
</img>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LOCAL TUBE STATIONS
</h3>
<xsl:value-of select="Local_Tube_Stations"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PRICE
</h3>
<xsl:value-of select="Attraction_Price"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
SHORT DESCRIPTION
</h3>
<xsl:value-of select="Short_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LONG DESCRIPTION
</h3>
<xsl:value-of select="Long_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
OPENING HOURS
</h3>
<xsl:value-of select="Attraction_Oppening_Hours"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
CATEGORY
</h3>
<xsl:value-of select="Category_Of_Attraction"/>
</div>
<div data-theme="a" data-role="footer" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</xsl:for-each>
</div>
</div>
 
<!--The British Museum Page-->
 
<div data-role="page" id="THEBRITISHMUSEUMPAGE"  data-theme="e">
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
<div data-role="content">
<div data-role="navbar" data-iconpos="bottom">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="b" data-icon="arrow-l">
Menu
</a>
</li>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>
        
<div data-role="navbar" data-iconpos="left">
<ul>
<li>
<a href="#ATTRACTIONSPAGE" data-transition="fade" data-theme="a" data-icon="back">
CLICK HERE TO GO BACK
</a>
</li>
</ul>
</div>
</div>

<br />
<br />
<br />

<div data-role="content">
<xsl:for-each select="Tourist_Attractions/Attractionsfour">

<div data-role="collapsible" data-collapsed="false" data-content-theme="a" data-theme="b">
<h3>
NAME OF THE ATTRACTION
</h3>
<xsl:value-of select="Name"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 1
</h3>
<xsl:value-of select="Address_Line1"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 2
</h3>
<xsl:value-of select="Address_Line2"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
TOWN
</h3>
<xsl:value-of select="Town"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
POST CODE
</h3>
<xsl:value-of select="Post_Code"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PICTURE OF ATTRACTION
</h3>
<img >
<xsl:attribute name="src">
<xsl:value-of select="Picture_Of_Attraction"/>
</xsl:attribute>
</img>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LOCAL TUBE STATIONS
</h3>
<xsl:value-of select="Local_Tube_Stations"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PRICE
</h3>
<xsl:value-of select="Attraction_Price"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
SHORT DESCRIPTION
</h3>
<xsl:value-of select="Short_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LONG DESCRIPTION
</h3>
<xsl:value-of select="Long_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
OPENING HOURS
</h3>
<xsl:value-of select="Attraction_Oppening_Hours"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
CATEGORY
</h3>
<xsl:value-of select="Category_Of_Attraction"/>
</div>
<div data-theme="a" data-role="footer" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</xsl:for-each>
</div>
</div>
 
<!--The Tower Of London Page-->
 
<div data-role="page" id="THETOWEROFLONDONPAGE"  data-theme="e">
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
<div data-role="content">
<div data-role="navbar" data-iconpos="bottom">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="b" data-icon="arrow-l">
Menu
</a>
</li>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>
<div data-role="navbar" data-iconpos="left">
<ul>
<li>
<a href="#ATTRACTIONSPAGE" data-transition="fade" data-theme="a" data-icon="back">
CLICK HERE TO GO BACK
</a>
</li>
</ul>
</div>
</div>
<br />
<br />
<br />

<div data-role="content">
<xsl:for-each select="Tourist_Attractions/Attractionsfive">

<div data-role="collapsible" data-collapsed="false" data-content-theme="a" data-theme="b">
<h3>
NAME OF THE ATTRACTION
</h3>
<xsl:value-of select="Name"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 1
</h3>
<xsl:value-of select="Address_Line1"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
ADDRESS LINE 2
</h3>
<xsl:value-of select="Address_Line2"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
TOWN
</h3>
<xsl:value-of select="Town"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
POST CODE
</h3>
<xsl:value-of select="Post_Code"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PICTURE OF ATTRACTION
</h3>
<img >
<xsl:attribute name="src">
<xsl:value-of select="Picture_Of_Attraction"/>
</xsl:attribute>
</img>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LOCAL TUBE STATIONS
</h3>
<xsl:value-of select="Local_Tube_Stations"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
PRICE
</h3>
<xsl:value-of select="Attraction_Price"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
SHORT DESCRIPTION
</h3>
<xsl:value-of select="Short_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
LONG DESCRIPTION
</h3>
<xsl:value-of select="Long_Description_Of_Attraction"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
OPENING HOURS
</h3>
<xsl:value-of select="Attraction_Oppening_Hours"/>
</div>
<div data-role="collapsible" data-collapsed="true" data-theme="b">
<h3>
CATEGORY
</h3>
<xsl:value-of select="Category_Of_Attraction"/>
</div>
<div data-theme="a" data-role="footer" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</xsl:for-each>
</div>
</div>
 
 
<!-- maps page --> 
<div id="MAPSPAGE" data-role="page" data-theme="e">
     
<div data-theme="a" data-role="header">
<h3>
TOURIST APP
</h3>
<div data-role="content">
<div data-role="navbar" data-iconpos="bottom">
<ul>
<li>
<a href="#HOMEPAGE1" data-transition="fade" data-theme="b" data-icon="arrow-l">
Menu
</a>
</li>
<li>
<a href="#MAPSPAGE" data-transition="fade" data-theme="b" data-icon="">
MAPS
</a>
</li>
</ul>
</div>
</div>
<div data-role="navbar" data-iconpos="left">
<ul>
<li>
<a href="#ATTRACTIONSPAGE" data-transition="fade" data-theme="a" data-icon="back">
CLICK HERE TO ATTRACTIONS
</a>
</li>
</ul>
</div>
</div>
  
<div id="control">
<strong>Start:</strong>
<select id="start" onchange="calcRoute();">
<option value=''>Me</option>
</select>
<strong>End:</strong>
<select id="end" onchange="calcRoute();">
<option value="Buckingham Palace, london">Buckingham Palace, london</option>
<option value="London Eye">London Eye</option>
<option value="Big Ben">Big Ben</option>
<option value="The British Museum">The British Museum</option>
<option value="The Tower Of London">The Tower Of London</option>
</select>
</div>
<div id="directions-panel"></div>
<div id="map-canvas"></div>
<div data-theme="a" data-role="footer" data-position="fixed">
<h3>
APPLICATION CREATED BY WAQAR MALIK
</h3>
</div>
</div>

</body>
 
<script type = "text/javascript">
 
 //refresh code
$ ('#MAPSPAGE').on('pageshow',function() { 
google.maps.event.trigger(map,'resize');	
});

  
var map;
var directionsDisplay;
var directionsService = new google.maps.DirectionsService();

function initialize() {

directionsDisplay = new google.maps.DirectionsRenderer();	  
	   	  
var myLatlng = new google.maps.LatLng(51.501009,-0.1415876);
var marker;

var myLatlng2 = new google.maps.LatLng(51.5028201,-0.1192523);
var marker2;

var myLatlng3 = new google.maps.LatLng(51.4998403,-0.1246627);
var marker3;

var myLatlng3 = new google.maps.LatLng(51.4998403,-0.1246627);
var marker3;

var myLatlng4 = new google.maps.LatLng(51.5189698,-0.1265003);
var marker4;

var myLatlng5 = new google.maps.LatLng(51.5086024,-0.0760129);
var marker5;

var mapOptions = {
center: new google.maps.LatLng(51.5112139,-0.1198244),
zoom: 7,
mapTypeId: google.maps.MapTypeId.ROADMAP
}
map = new google.maps.Map(document.getElementById("map-canvas"), mapOptions);

directionsDisplay.setMap(map);
directionsDisplay.setPanel(document.getElementById('directions-panel'));

var control = document.getElementById('control');
control.style.display = 'block';
map.controls[google.maps.ControlPosition.TOP_CENTER].push(control);	  

// To add the marker to the map, use the 'map' property
marker = new google.maps.Marker({
position: myLatlng,
map: map,
title:"Buckingham Palace!"
});

var infowindow = new google.maps.InfoWindow({
content: "BuckinghamPalace"

});

google.maps.event.addListener(marker, 'click', function(){
infowindow.open(map,marker);
});

marker2 = new google.maps.Marker({
position: myLatlng2,
map: map,
title:"London Eye!"
});

var infowindow2 = new google.maps.InfoWindow({
content: "LondonEye"

});

google.maps.event.addListener(marker2, 'click', function(){
infowindow2.open(map,marker2);
});

marker3 = new google.maps.Marker({
position: myLatlng3,
map: map,
title:"Big Ben!"
});

var infowindow3 = new google.maps.InfoWindow({
content: "BigBen"
});

google.maps.event.addListener(marker3, 'click', function(){
infowindow3.open(map,marker3);
});

marker4 = new google.maps.Marker({
position: myLatlng4,
map: map,
title:"The British Museum!"
});

var infowindow4 = new google.maps.InfoWindow({
content: "BritishMuseum"

});

google.maps.event.addListener(marker4, 'click', function(){
infowindow4.open(map,marker4);
});

marker5 = new google.maps.Marker({
position: myLatlng5,
map: map,
title:"The Tower Of London!"
});
	
var infowindow5 = new google.maps.InfoWindow({
content: "TowerOfLondon"

});

google.maps.event.addListener(marker5, 'click', function(){
infowindow5.open(map,marker5);
});

//geolocation
			
if(navigator.geolocation) {
navigator.geolocation.getCurrentPosition(function(position) {
var pos = new google.maps.LatLng(position.coords.latitude,
position.coords.longitude);

start =	new google.maps.LatLng(position.coords.latitude,
position.coords.longitude);							   

var infowindow = new google.maps.InfoWindow({
map: map,
position: pos,
content: 'YOU ARE HERE'
});

map.setCenter(pos);
}, function() {
handleNoGeolocation(true);
});
} else {
// Browser doesn't support Geolocation
handleNoGeolocation(false);
  }	  
}

function handleNoGeolocation(errorFlag) {
if (errorFlag) {
var content = 'Error: The Geolocation service failed.';
} else {
var content = 'Error: Your browser doesn\'t support geolocation.';
}

//directions
var options = {
map: map,
position: new google.maps.LatLng(60, 105),
content: content
};

var infowindow = new google.maps.InfoWindow(options);
map.setCenter(options.position);
}

var start;

function calcRoute() {
start;
var end = document.getElementById('end').value;
var request = {
origin: start,
destination: end,
travelMode: google.maps.TravelMode.TRANSIT
};
directionsService.route(request, function(response, status) {
if (status == google.maps.DirectionsStatus.OK) {
directionsDisplay.setDirections(response);
}
});
}

google.maps.event.addDomListener(window, 'load', initialize);

</script>
</html>
</xsl:template>
</xsl:stylesheet>