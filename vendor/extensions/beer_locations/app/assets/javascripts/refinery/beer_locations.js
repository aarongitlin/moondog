$(document).ready(function() {
  Gmaps.map.HandleDragend = function(pos) {
    $("#beer_location_latitude").val(pos.lat());
    $("#beer_location_longitude").val(pos.lng());
  };

  Gmaps.map.callback = function() {
    for(var i=0; i<this.markers.length; i++) {
      google.maps.event.addListener(Gmaps.map.markers[i].serviceObject, 'dragend', function() { Gmaps.map.HandleDragend(this.getPosition()) });
    }
  };
});