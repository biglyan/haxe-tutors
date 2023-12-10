class Arrays<T>
{
	// Generic iterate function 
	public static function iterate<T>(list:Array<T>) : Void
	{
		for (elem in list)
		{
			trace(elem);
		}
	}

	public static function copyArray<T>(array:Array<T>) : Array<T>
	{
		return array.copy();
	}

	public static function retrieveElements() : Void
	{
		var arrayOfStrings = ["first", "foo", "middle", "foo", "last"];
		// Retrieves first array element
		var first = arrayOfStrings[0];
		// Retrieves last array element
		var last = arrayOfStrings[arrayOfStrings.length - 1];
		// Retrieves first occurrence of "foo" string
		var firstOccurrence = arrayOfStrings[arrayOfStrings.indexOf("foo")];
		// Retrieves last occurrence of "foo" string
		var lastOccurrence = arrayOfStrings[arrayOfStrings.lastIndexOf("foo")];
	}

	public static function addAndRemove(list:Array<String>) : Array<String>
	{
		// Add operations
		list = [];
		// Adds "Hello" at index 0, offsetting elements to the right by one position
		list.insert(0, "Hello");
		// Prepends "Haxe" to the start of the array
		list.unshift("Haxe");
		// Appends "World" to the end of the array 
		list.push("World");
		// Appends "foo", "bar" elements to the end of a copy of the array
		list = list.concat(["foo", "bar"]);

		// Remove operations
		list = ["Hi", "Everyone", "Nice", "To", "Meet", "You"];
		// Removes first occurence of "Hello" in the array
		list.remove("Hello");
		// Removes and returns three elements beginning with (and including) index 0
		list.splice(0, 3);
		// Removes and returns first element of the array
		list.shift();
		// Removes and returns last element of the array
		list.pop();

		return list;
	}

	public static function main() : Void
	{
		var arrayOfStrings : Array<String> = ["Apple", "Pear", "Banana"];
		trace(arrayOfStrings);

		var arrayOfFloats = [10.2, 40.5, 34.5];
		trace(arrayOfFloats);

		var aInts = [for(i in 0...5) i];
		trace(aInts); // [0,1,2,3,4]

		var aEvens = [for(i in 0...5) i*2];
		trace(aEvens); // [0,2,4,6,8]

		var aChars = [for(c in 65...70) String.fromCharCode(c)];
		trace(aChars); // ['A','B','C','D','E']

		var x = 1;
		var aBits = [while(x < 128) x = x * 2];
		trace(aBits); // [2,4,6,8,16,32,64,128]

		addAndRemove(arrayOfStrings);

		iterate(arrayOfStrings);

		var copiedArray = copyArray(arrayOfStrings);
		trace(copiedArray);

		// Filter
		var list:Array<String> = ["apple", "pear", "banana"];
		var filteredList = list.filter(function (v) return v == "banana");
		trace(filteredList); // banana
		var list:Array<String> = ["apple", "pear", "banana"];
		var filteredList = [for (v in list ) if (v == "banana") v];
		trace(filteredList); // banana

		// Map
		var list:Array<String> = ["first", "second", "last"];
		var importantList = list.map(function (v) return v.toUpperCase());
		trace(importantList); // ["FIRST","SECOND","LAST"]
		var list:Array<String> = ["first", "second", "last"];
		var importantList = [for(v in list) v.toUpperCase()];
		trace(importantList); // ["FIRST","SECOND","LAST"]

		// Reverse
		list.reverse();
		trace(list);

		// Slice 
		var list:Array<String> = ["first", "second", "last"];
		var slicedList = list.slice(1, 2);
		trace(slicedList); // ["second"]

		// Sort
		var arrayOfInts:Array<Int> = [1,5,2,4,3];
		arrayOfInts.sort(function (a, b) return a - b);
		trace(arrayOfInts); // [1,2,3,4,5]
		var arrayOfStrings:Array<String> = ["c", "a", "b"];
		arrayOfStrings.sort(function (a, b) return if (a < b) -1 else 1);
		trace(arrayOfStrings); // ["a","b","c"]

		// Displaying contents
		var list:Array<String> = ["first", "second", "last"];
		// Returns a string of array elements concatenated by separator string
		var listJoined:String = list.join(" / ");
		trace(listJoined); // "first / second / last"
		// Returns a string representation of the array structure
		var listAsString:String = list.toString();
		trace(listAsString); // "first,second,last"
	}		
}