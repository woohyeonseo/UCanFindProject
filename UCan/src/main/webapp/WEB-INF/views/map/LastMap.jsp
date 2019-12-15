<%@ page language="java" contentType="text/html; charset=EUC-KR"
   pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
  
<style>
/* Set the size of the div element that contains the map */
#map {
   height: 400px; /* The height is 400 pixels */
   width: 100%; /* The width is the width of the web page */
}
</style>


</head>
<body>
   <h3>My Google Maps Demo</h3>
   <!--The div element for the map -->
   <div id="map"></div>

<script src="https://maps.googleapis.com/maps/api/js?key="yourKey"=initMap"
 async defer   ></script>
<script>

var MAP_VIEW;
var MARKERS = [];

// Initialize and add the map
function initMap() {
   
   var locations = [
        {lat: -31.563910, lng: 147.154312},
        {lat: -33.718234, lng: 150.363181},
        {lat: -33.727111, lng: 150.371124},
        {lat: -33.848588, lng: 151.209834},
        {lat: -33.851702, lng: 151.216968},
        {lat: -34.671264, lng: 150.863657},
        {lat: -35.304724, lng: 148.662905},
        {lat: -36.817685, lng: 175.699196},
        {lat: -36.828611, lng: 175.790222},
        {lat: -37.750000, lng: 145.116667},
        {lat: -37.759859, lng: 145.128708},
        {lat: -37.765015, lng: 145.133858},
        {lat: -37.770104, lng: 145.143299},
        {lat: -37.773700, lng: 145.145187},
        {lat: -37.774785, lng: 145.137978},
        {lat: -37.819616, lng: 144.968119},
        {lat: -38.330766, lng: 144.695692},
        {lat: -39.927193, lng: 175.053218},
        {lat: -41.330162, lng: 174.865694},
        {lat: -42.734358, lng: 147.439506},
        {lat: -42.734358, lng: 147.501315},
        {lat: -42.735258, lng: 147.438000},
        {lat: -43.999792, lng: 170.463352}
   ];
   
   // The map, centered at Uluru
   MAP_VIEW = new google.maps.Map(
      document.getElementById('map'), {
      zoom : 6,
            center: {lat: -28.024, lng: 140.887}
   });
   
   for(var i=0; i<locations.length; i++){
      var marker = new google.maps.Marker(
         {
            position : locations[i],
            map : MAP_VIEW,
            visible : false
         }
      );
      
      MARKERS.push(marker);
   }
   
   google.maps.event.addDomListener(MAP_VIEW, 'idle', manageMarker);
}

function manageMarker(){
   var bounds = MAP_VIEW.getBounds();
   console.log(bounds);
   
   for(var i=0; i<MARKERS.length; i++){
      var marker = MARKERS[i];
      
      if(bounds.contains(marker.getPosition())){
         marker.setVisible(true);
      }else{
         marker.setVisible(false);
      }
   }
}
      
      
   </script>

</body>
</html>




