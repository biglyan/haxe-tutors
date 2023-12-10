class AccessFieldByString
{
	@:keep var myField : String = "Access by String";

	public function new()
	{

	}

	public static function main() : Void
	{
		var accessFieldByString = new AccessFieldByString();

		var fieldName = "myField";
		var myField : String = Reflect.field(accessFieldByString, fieldName);
		trace(myField);
	}
}