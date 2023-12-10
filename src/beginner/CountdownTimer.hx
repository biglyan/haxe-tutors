import haxe.Timer;

using StringTools;

class CountdownTimer {
	inline static var minuteInMs = 1000 * 60;
	inline static var hourInMs = minuteInMs * 60;
	inline static var dayInMs = hourInMs * 24;

	public static function main() {
		// var target = new Date(2018,4,10, 23,12,4);
		var target = Date.fromTime(Date.now().getTime() + 5000);
		var targetTime = target.getTime();

		// run timer every second
		var timer = new Timer(1000);
		timer.run = function() {
			var now = Date.now().getTime();
			var remainingMs = targetTime - now;

			var days = Math.floor(remainingMs / dayInMs);
			var hours = Math.floor((remainingMs % dayInMs) / hourInMs);
			var minutes = Math.floor((remainingMs % hourInMs) / minuteInMs);
			var seconds = Math.floor((remainingMs % minuteInMs) / 1000);

			// Format ourselves for fun. We could have used `DateTools.format` here too
			var d = '$days'.lpad("0", 2);
			var h = '$hours'.lpad("0", 2);
			var m = '$minutes'.lpad("0", 2);
			var s = '$seconds'.lpad("0", 2);

			if (remainingMs > 0) {
				trace('$d days - $h:$m:$s');
			} else {
				trace('countdown expired!');
				timer.stop();
			}
		}

		// return timer;
	}
}
