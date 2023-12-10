class Animal
{
	public function new() { }

	public function sayHello() 
	{
		trace("Hello!");
	}

	public function say()
	{

	}

	public static function main() : Void
	{
		var animal = new Animal();
		animal.sayHello();
		animal.say();
	}
}