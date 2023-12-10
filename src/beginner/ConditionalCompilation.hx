class ConditionalCompilation
{
	public static function main() : Void
	{
		// To use conditional compilation
		// When building the project use the following tags
		// -D debug
		// -D debugLevel=5

		#if debug
		
		trace("This is a debug message");
		
		#if (debugLevel > 3)
		trace("Debug Level is > 3");
		#else
		trace("Debug Level is <= 3");
		#end

		#end

	}
}