import UIKit

/* Quiz Optional */
//func getUsername(userID: String?) -> String! { // jangan dirubah
//    // Check jika userID tidak nil maka return {nama kamu}. Jika userID nil maka return nil.
//}

// karena yang diminta adalah return ke my name apabila userID tidak nil, maka perlu ditambah properti myName

let myname = "Novan Agung Waskito"
func getUsername(userID: String?) -> String! { // jangan dirubah
    // Check jika userID tidak nil maka return {nama kamu}. Jika userID nil maka return nil.
    guard userID != nil else { return nil }
return "Novan Agung Waskito"
    }
//let usernameNoData = getUsername(userID: nil) // jangan dirubah
//print("Namaku adalah \(usernameNoData! + " funios")") // Fix the error, pastikan outputnya harus seperti ini "Namaku adalah {nama kamu} funios". dengan tetap mempertahankan variabel usernameNoData disitu.

let usernameNoData = getUsername(userID: nil) // jangan dirubah
print("Nama ku adalah \(usernameNoData ?? "Novan Agung Waskito" + " funios")") // Fix the error, pastikan outputnya harus seperti ini "Namaku adalah {nama kamu} funios". dengan tetap mempertahankan variabel usernameNoData disitu.

//let username = getUsername(userID: "AnyID") // jangan dirubah
//if username == nil {
//    print("Usernamenya \(username)") // Fix the warning without using {default value or `??`}
//    print("Usernamenya tidak ada \(username != nil)") // Should print true
//    print("Nama kamu terdiri dari \(username ?? "tejo".count) huruf") // Fix the error
//}

let username = getUsername(userID: "AnyID") // jangan dirubah
if username == nil {
    print("Usernamenya \(username)") // Fix the warning without using {default value or `??`}
    print("Usernamenya tidak ada \(username != nil)") // Should print true
    print("Nama kamu terdiri dari \(username "tejo".count) huruf") // Fix the error
}

/* Quiz Class vs Struct
 Buatlah 1 buah struct dengan minimal 2 property.
 Buatlah sebuah class yang berkaitan dengan struct yang kalian buat, pastikan struct tersebut menjadi property dari class ini, didalam class ini pastikan kalian mempunyai 1 buah fungsi yang menggunakan property struct yang kalian buat tersebut.
 Buatlah sebuah child-class {inheritance} dengan tambahan satu property, gunakan property tambahan itu pada fungsi yang sama yang ada di parent-class {overriding}, dan buatlah satu fungsi tambahan yang mempunyai nama yang sama dengan tambahan variabel {overloading}.
  NOTE: Jangan buat fungsi kosong, buat yang meaningful dan implementasikan apa yang kita sudah pelajari diprontera.
 */


