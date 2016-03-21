// Dynamic load the javascript init based on features specified from view
// Combine the best practice to handle javascript invocation in rails
// http://brandonhilkert.com/blog/organizing-javascript-in-rails-application-with-turbolinks/
// https://viget.com/extend/javascript-execution-patterns-for-non-web-apps

window.App || (window.App = {});

// Get the features array
App.features = function() {
  var features = $('body').data('features');
  var featuresArray = [];
  if(features) {
    featuresArray = features.split(' ');
  }
  return featuresArray;
};

// Define the default feature in here
$(document).on("page:change", function() {
  if ($.inArray('dashboard-page',App.features()) >= 0) {
    demo.initChartist();

    $.notify({
      icon: 'pe-7s-gift',
      message: "Welcome to <b>Light Bootstrap Dashboard</b> - a beautiful freebie for every web developer."
    },{
      type: 'info',
      timer: 4000
    });
  }
  if ($.inArray('maps-page',App.features()) >= 0) {
    $().ready(function(){
        demo.initGoogleMaps();
    });
  }
});
