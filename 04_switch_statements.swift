var someCharacter:Character = "c"

switch someCharacter {
    case "a":
        print("is an A")
    case "b", "c":                  // "b" OR "C"
        print("is a B or C")
    default:
        print("some fallback")
}