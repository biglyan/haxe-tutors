class DateAndTime {
	public static function main():Void {
		var date = new Date(2018, 4, 8, 13, 4, 13);
		trace(date);

		var today = Date.now();
		trace(today);

		trace(today.getSeconds());
		trace(today.getMinutes());
		trace(today.getHours());
		trace(today.getDate());
		trace(today.getDay());
		trace(today.getMonth());
		trace(today.getFullYear());

		var now = Date.now();

		var monthNames = [
			"January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"
		];
		var monthName = monthNames[now.getMonth()];
		trace("this month is called " + monthName);

		var dayNames = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saterday"];
		var dayName = dayNames[now.getDay()];
		trace("this day is called " + dayName);

		DateTools.format(Date.now(), "%Y-%m-%d_%H:%M:%S");
		// 2018-07-08_14:44:05

		DateTools.format(Date.now(), "%r");
		// 02:44:05 PM

		var t = DateTools.format(Date.now(), "%T");
		// 14:44:05

		DateTools.format(Date.now(), "%F");
		// 2018-07-08

		DateTools.format(Date.now(), "%b %d, %Y");
		// Jan 08, 2018

		var today = Date.now();
		var dayInMs = 24 * 60 * 60 * 1000;
		var yesterday = DateTools.delta(today, -dayInMs);
		var tomorrow = DateTools.delta(today, dayInMs);
		var nextWeek = DateTools.delta(today, dayInMs * 7);

		trace("today: " + today);
		trace("yesterday: " + yesterday);
		trace("tomorrow: " + tomorrow);
		trace("next week: " + nextWeek);
	}
}
