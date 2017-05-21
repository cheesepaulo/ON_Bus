//Update the div map-canvas
$(window).load(function() {
   loadScript();
});

// Configure google maps params
function loadScript() {
  console.log("map loading ...");

  var script = document.createElement('script');
  script.type = 'text/javascript';
  //'https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyBJYFdplGeKUUEmGZ-vL4ydiSZ09Khsa_o&sensor=false&libraries=drawing'
  script.src = 'https://maps.googleapis.com/maps/api/js?v=3.exp' +
    //'&v=3.14'+
    '&key=AIzaSyA7Ut5IaOJgBce5XGyQI7N9oikMFGTeKWA'+
    '&libraries=drawing'+
    '&callback=initialize';
  document.body.appendChild(script);
}

// Initialize the map
var map;
function initialize() {
  var mapOptions = {
          // Define a start coordinates
          center: new google.maps.LatLng(-23.552133,-46.6375192),
          zoom: 12,
          mapTypeId: google.maps.MapTypeId.NORMAL,
          panControl: true,
          scaleControl: false,
          streetViewControl: true,
          overviewMapControl: true
        };
        // initializing map
        map = new google.maps.Map(document.getElementById("map-canvas"),mapOptions);

}

// Creates a bus marker
function placeMarkerBus(p_lat,p_lng, linha,acessivel, carro) {
    var location = new google.maps.LatLng( p_lat, p_lng);
    var marker = new google.maps.Marker({
    position: location,
    map: map,
    icon: createImage("../img/onibus.png"),
    animation: google.maps.Animation.DROP,
    draggable: false
  });

  var infowindow = new google.maps.InfoWindow({
    content: 'Acessivel: ' + acessivel + '<br>' +
              'Linha: ' + linha + '<br>' +
             'Prefixo Veiculo: ' + carro
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
    });
}

//Creates a Stop marker
function placeMarkerStop(p_lat, p_lng, endereco){
  var location = new google.maps.LatLng( p_lat, p_lng);
  var marker = new google.maps.Marker({
    position: location,
    map: map,
    icon: createImage("../img/mark.png"),
    animation: google.maps.Animation.DROP,
    draggable: false
  });
  var infowindow = new google.maps.InfoWindow({
    content: 'Endereço: ' + endereco
  });
  google.maps.event.addListener(marker, 'click', function() {
    infowindow.open(map,marker);
    });
}

//Creates a information balloon
function createInfoWindow(text){
  var infowindow = new google.maps.InfoWindow({
    content: text
  });
  return infowindow;
}
  // Creates an icon for markers
function createImage(url){
  var image = {
    url: url,
    // This marker is 32 pixels wide by 32 pixels tall.
    size: new google.maps.Size(32, 32),
    // The origin for this image is 0,0.
    origin: new google.maps.Point(0,0),
    // The anchor for this image is the base of the flagpole at 0,32.
    anchor: new google.maps.Point(0, 32)
  };
  return image;
}
