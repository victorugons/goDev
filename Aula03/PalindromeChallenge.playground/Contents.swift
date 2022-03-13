let palindrome1: String = "AbCd DC Ba"
let palindrome2: String = "Mia aEri e e IREAaim"
let nonPalindrome1: String = "John Doe"
let nonPalindrome2: String = "AEIEE"

func isPalindrome(string: String) -> Bool {
    let stringToCheck: String = string.filter{!$0.isWhitespace}.lowercased()
    
    return stringToCheck == String(stringToCheck.reversed())
}

print(isPalindrome(string: palindrome1))
print(isPalindrome(string: palindrome2))

print(isPalindrome(string: nonPalindrome1))
print(isPalindrome(string: nonPalindrome2))
