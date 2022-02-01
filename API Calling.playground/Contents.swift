import UIKit

// var name: [key : value] pairs

var dictionary = [Int: String]()
dictionary = [1: "a", 2: "b"]

var infreneceDictionary = [1: "a", 2: "b"]
infreneceDictionary[3] = "c"
infreneceDictionary
infreneceDictionary.count
infreneceDictionary.removeValue(forKey: 1)
infreneceDictionary
infreneceDictionary[2] = "New"
infreneceDictionary[4] = "D"
infreneceDictionary.updateValue("f", forKey: 2)
infreneceDictionary

if let value = infreneceDictionary[2]
{
    print(value)
}
let emptyDictionary = [Int: String]()
emptyDictionary.isEmpty

if emptyDictionary.isEmpty
{
    print("Dictionary is Empty")
}

var colors = ["Red", "White", "Blue"]
var numbers = ["1", "2", "3"]

var multi = [1: [colors], 2:[numbers]]

var myAddress = ["City": "Chicago", "Zip":"60611"]
myAddress["City"] = "Barrington"
myAddress["Zip"]

myAddress["State"] = "IL"
myAddress.removeValue(forKey: "Zip")
myAddress

let addressKeys = Array(myAddress.keys)
let addressValues = Array(myAddress.values)

