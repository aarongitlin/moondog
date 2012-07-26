$(document).ready(function() {
$.getJSON("https://api.twitter.com/1/statuses/user_timeline.json?screen_name=lovesyoudesign&count=15&callback=?",
	function(data){
		$.each(data, function(i,item){
			ct = item.text;
			mytime = item.created_at;
			a = item.created_at
			//var strtime = mytime.replace(/(\+\S+) (.*)/, '$2 $1')
			//var mydate = new Date(Date.parse(strtime)).toLocaleDateString();
			//var mytime = new Date(Date.parse(strtime)).toLocaleTimeString();
			var K = function () {
			    var a = navigator.userAgent;
			    return {
			        ie: a.match(/MSIE\s([^;]*)/)
			    }
			}();

			var H = function (a) {
			    var b = new Date();
			    var c = new Date(a);
			    if (K.ie) {
			        c = Date.parse(a.replace(/( \+)/, ' UTC$1'))
			    }
			    var d = b - c;
			    var e = 1000,
			        minute = e * 60,
			        hour = minute * 60,
			        day = hour * 24,
			        week = day * 7;
			    if (isNaN(d) || d < 0) {
			        return ""
			    }
			    if (d < e * 7) {
			        return "right now"
			    }
			    if (d < minute) {
			        return Math.floor(d / e) + " seconds ago"
			    }
			    if (d < minute * 2) {
			        return "about 1 minute ago"
			    }
			    if (d < hour) {
			        return Math.floor(d / minute) + " minutes ago"
			    }
			    if (d < hour * 2) {
			        return "about 1 hour ago"
			    }
			    if (d < day) {
			        return Math.floor(d / hour) + " hours ago"
			    }
			    if (d > day && d < day * 2) {
			        return "yesterday"
			    }
			    if (d < day * 365) {
			        return Math.floor(d / day) + " days ago"
			    } else {
			        return "over a year ago"
			    }
			};


			ct = ct.replace(/http:\/\/\S+/g,  '<a href="$&" target="_blank">$&</a>');
		    ct = ct.replace(/\s(@)(\w+)/g,    ' @<a href="http://twitter.com/$2" target="_blank">$2</a>');
		    ct = ct.replace(/\s(#)(\w+)/g,    ' #<a href="http://search.twitter.com/search?q=%23$2" target="_blank">$2</a>');
			$("#jstweets").append('<div>'+ct + '<br />' + ' <abbr><i>' + H(item.created_at) + '</i></abbr></div>');
			$("#jstweets abbr").addClass("timeago");
		});
		
	
		
	});
});