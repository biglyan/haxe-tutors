class Dog extends Animal {
	public function new() {
		super();
	}

	public static function main():Void {
		var myDog = new Dog();
		myDog.sayHello();
	}
}
