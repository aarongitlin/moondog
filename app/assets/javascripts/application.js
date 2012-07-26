// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//

//= require jquery
//= require jquery_ujs
//= require tabs
//= require jquery.cycle.all
//= require jquery.sticky
//= require lovestwitter
//= require jquery.timeago
//= //require_tree .

$(window).load(function(){
		$('#jstweets').cycle({   
		 fx: 'fade', delay: -1000, timeout: 8000, width: 300 // This can be changed to whatever you like - lower the number, longer each tweet stays on-screen. 
		 });
	});
