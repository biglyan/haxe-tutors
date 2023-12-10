class Calculator
{
	public function new() : Void
	{
		trace("A new calculator instance was created!");
	}

	public function add(a : Int, b : Int) : Int 
	{
		return a + b;
	}

	public function sub(a : Int, b : Int) : Int 
	{
		return a - b;
	}

	public function mul(a : Int, b : Int) : Int 
	{
		return a * b;
	}

	public function div(a : Int, b : Int) : Float
	{
		return a / b;
	}

	public static function main() : Void
	{
		// Create a new instance of the Calculator
		var calculator = new Calculator();

		trace(calculator.add(1, 2));
		trace(calculator.mul(2, 3));
	}
}