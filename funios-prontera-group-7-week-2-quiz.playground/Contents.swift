import UIKit
//
//let name: String? = "ana"
///* Quiz Optional */
//func getUsername(userID: String?) -> String! { // jangan dirubah
//    // Check jika userID tidak nil maka return {nama kamu}. Jika userID nil maka return nil.
//    if userID != nil {
//        return name ?? "ana"
//    } else {
//        return nil
//    }
//}
//getUsername(userID: nil)
//
//
//let usernameNoData = getUsername(userID: nil) // jangan dirubah
//print("Namaku adalah \(usernameNoData ?? "Ana"  + " funios")")// Fix the error, pastikan outputnya harus seperti ini "Namaku adalah {nama kamu} funios". dengan tetap mempertahankan variabel usernameNoData disitu.
////
//
//    let username = getUsername(userID: "AnyID") // jangan dirubah
//    if username != nil {
//        print("Usernamenya \(username!)") // Fix the warning without using {default value or `??`}
//        print("Usernamenya tidak ada \(username != nil)") // Should print true
//        print("Nama kamu terdiri dari \(username!.count) huruf") // Fix the error
//    }
//
//
////

/* Quiz Class vs Struct
 Buatlah 1 buah struct dengan minimal 2 property.
 Buatlah sebuah class yang berkaitan dengan struct yang kalian buat, pastikan struct tersebut menjadi property dari class ini, didalam class ini pastikan kalian mempunyai 1 buah fungsi yang menggunakan property struct yang kalian buat tersebut.
 Buatlah sebuah child-class {inheritance} dengan tambahan satu property, gunakan property tambahan itu pada fungsi yang sama yang ada di parent-class {overriding}, dan buatlah satu fungsi tambahan yang mempunyai nama yang sama dengan tambahan variabel {overloading}.
  NOTE: Jangan buat fungsi kosong, buat yang meaningful dan implementasikan apa yang kita sudah pelajari diprontera.
 */


//belum selesai
struct Character {
var kebiasaan: String
var kelebihan: String
    
}
class Animal {
    var kebiasaan: String
    var kelebihan: String
    
    init(kebiasaan: String, kelebihan: String) {
        self.kebiasaan = kebiasaan
        self.kelebihan = kelebihan
}
class owl: Animal {
    var character: Character = Character (kebiasaan: "Tidur siang", kelebihan: "Kuat melek malem")
}
class rusa: Animal {
    var character: Character = Character (kebiasaan: "Lari kencang", kelebihan: "Suka jalan-jalan")
}//
}
