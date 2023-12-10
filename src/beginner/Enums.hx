// using haxe.EnumTools;
// using haxe.EnumValueTools;
// Describes a type of item that can be rewarded
enum ItemType {
	Key;
	Sword(name:String, attack:Int);
	Shield(name:String, defense:Int);
}

// Describes a type of reward that can be given
enum RewardType {
	Gold(value:Int);
	Experience(value:Int);
	Item(type:ItemType);
}

class Enums {
	public static function main():Void {
		var gold = RewardType.Gold(123);
		var experience = RewardType.Experience(456);
		var item = RewardType.Item(ItemType.Key);

		// Creates Sword item type with name Slashy and strength 100
		var createdByName = ItemType.createByName("Sword", ["Slashy", 100]);
		// Creates Key item type, as it is the first constructor specified
		var createdByIndex = ItemType.createByIndex(0);

		var reward = RewardType.Item(ItemType.Sword("Slashy", 100));

		switch (reward) {
			case RewardType.Gold(value):
				trace('I got $value gold!');
			case RewardType.Experience(value):
				trace('I got $value experience!');
			case RewardType.Item(type):
				switch (type) {
					case ItemType.Key:
						trace('I got a key!');
					case ItemType.Sword(name, attack):
						trace('I got "$name", a sword with $attack attack!');
					case ItemType.Shield(name, defense):
						trace('I got "$name", a shield with $defense defense!');
				}
		}

		// The haxe.EnumTools module in the standard library contains several methods
		// to help work with enums and enum constructors.
		// They provide additional ways to create enum instances,
		// as well as obtain information on enum constructors.
		// These methods are automatically included in the module context
		// when using enums, but usually they would be included explicitly through using haxe.EnumTools;.
		// Gets enum name, including path
		// var enumName = ItemType.getName();
		// Gets array of constructor names for provided enum
		// var enumConstructorNames = ItemType.getNames();

		// The haxe.EnumValueTools module in the standard library contains several methods
		// to help work with enum values.
		// They provide additional ways to compare enum instances,
		// and get their constructors and constructor arguments.
		// These methods are automatically included in the module context when using enums,
		// but usually they would be included explicitly through using haxe.EnumValueTools;.
		// var item = ItemType.Shield("Shieldy", 100);
		// Gets enum instance constructor name
		// var constructorName = item.getName();
		// Gets enum instance constructor index
		// var constructorIndex = item.getIndex();
		// Gets enum instance constructor arguments
		// var constructorArguments = item.getParameters();
		// var otherItem = ItemType.Sword("Slashy", 100);
		// Compares two enum instances recursively
		// if (item.equals(otherItem)) trace("Items are equal!");
		// Matches enum instance against pattern
		// if (otherItem.match(ItemType.Shield(_, _))) trace("Other item is a shield!");
	}
}
