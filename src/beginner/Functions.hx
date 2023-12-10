class Functions {
	// No args, no return, no access information
	function function1() {}

	// One arg, no return, no access information
	function function2(msg:String) {
		trace(msg);
	}

	// One generic arg, no return, no access information
	function function3<T>(msg:T) {
		trace(msg);
	}

	// One default parameter, no return, no access information
	function function4(msg:String = "Hello Me") {
		trace(msg);
	}

	// One optional parameter, no return, no access information
	function function5(?msg:String) {
		if (msg == null) {
			trace("null");
		} else {
			trace(msg);
		}
	}

	// Two args, return, no access information
	function function6(a:Int, b:Int):Int {
		return a + b;
	}

	// Two generic args, return, no access information
	function function7<T>(a:T, b:T):Bool {
		return a == b;
	}

	// Inline function
	inline function function8(a:Int, b:Int):Int {
		return a + b;
	}

	public static function main():Void {
		var msg = "Hello World";
		function1();
		function2(msg);
		function3(msg);
		function4();
		function5();
		function5(msg);
		function6(1, 2);
		function7(1, 1);
		function7("hello", "hello");
		function7(0.132, 0.133);
		// Inline function => in JS could be compiled from "function8(1, 2)" to "3"
		function8(1, 2);
	}
}
