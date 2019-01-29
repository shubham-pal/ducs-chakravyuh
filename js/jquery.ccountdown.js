/*!jQuery Circular CountDown*/
/*Downward compatible
 * Version: 1.0.0 (26/04/2013)
 * Requires: jQuery v1.7+
 * Copyright (c) 2013 Nikhil Navadiya
 * Thanks to http://www.javascriptkit.com/
 */
(function($) {
 	$.fn.ccountdown = function(remaining) {
 		var $this = this;
 		var tmpId;

		// calling function first time so that it wll setup remaining time
		var _changeTime = function() {

			_dd = remaining * 1000;
			remaining--;
			
			_dday = Math.floor(_dd / (60 * 60 * 1000 * 24) * 1);
			_dhour = Math.floor((_dd % (60 * 60 * 1000 * 24)) / (60 * 60 * 1000) * 1);
			_dmin = Math.floor(((_dd % (60 * 60 * 1000 * 24)) % (60 * 60 * 1000)) / (60 * 1000) * 1);
			_dsec = Math.floor((((_dd % (60 * 60 * 60 * 1000 * 24)) % (60 * 60 * 1000)) % (60 * 1000)) / 1000 * 1);
			var el = $($this);
			var $ss = el.find(".second"), $mm = el.find(".minute"), $hh = el.find(".hour"), $dd = el.find(".days");
			$ss.val(_dsec).trigger("change");
			$mm.val(_dmin).trigger("change");
			$hh.val(_dhour).trigger("change");
			$dd.val(_dday).trigger("change");

			if (remaining < 0 && tmpId != undefined)
			{
				clearInterval(tmpId);
				location.reload();
			}
		};

		if (remaining > 0)
		{
			_changeTime();
			tmpId = setInterval(_changeTime, 1000);
		}
		else
		{
			_dd = 0;
			
			_dday = Math.floor(_dd / (60 * 60 * 1000 * 24) * 1);
			_dhour = Math.floor((_dd % (60 * 60 * 1000 * 24)) / (60 * 60 * 1000) * 1);
			_dmin = Math.floor(((_dd % (60 * 60 * 1000 * 24)) % (60 * 60 * 1000)) / (60 * 1000) * 1);
			_dsec = Math.floor((((_dd % (60 * 60 * 60 * 1000 * 24)) % (60 * 60 * 1000)) % (60 * 1000)) / 1000 * 1);
			var el = $($this);
			var $ss = el.find(".second"), $mm = el.find(".minute"), $hh = el.find(".hour"), $dd = el.find(".days");
			$ss.val(_dsec).trigger("change");
			$mm.val(_dmin).trigger("change");
			$hh.val(_dhour).trigger("change");
			$dd.val(_dday).trigger("change");
		}
	};

})(jQuery);