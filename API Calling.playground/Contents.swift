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
