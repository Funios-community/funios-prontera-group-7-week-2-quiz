import UIKit

/* Quiz Optional */
func getUsername(userID: String?) -> String! { // jangan dirubah
    guard let _ = userID else {
        return nil
    }
    
    return "Ash Ree"
    // Check jika userID tidak nil maka return {nama kamu}. Jika userID nil maka return nil."
}

let usernameNoData = getUsername(userID: nil) // jangan dirubah
print("Namaku adalah \(usernameNoData ?? "Ash Ree" + " funios")") // Fix the error, pastikan outputnya harus seperti ini "Namaku adalah {nama kamu} funios". dengan tetap mempertahankan variabel usernameNoData disitu.

let username = getUsername(userID: "AnyID") // jangan dirubah
if username != nil {
    print("Usernamenya \(username!)") // Fix the warning without using {default value or `??`}
    print("Usernamenya tidak ada \(username != nil)") // Should print true
    print("Nama kamu terdiri dari \(username?.count ?? "tejo".count) huruf") // Fix the error
}

/* Quiz Class vs Struct
 Buatlah 1 buah struct dengan minimal 2 property.
 Buatlah sebuah class yang berkaitan dengan struct yang kalian buat, pastikan struct tersebut menjadi property dari class ini, didalam class ini pastikan kalian mempunyai 1 buah fungsi yang menggunakan property struct yang kalian buat tersebut.
 Buatlah sebuah child-class {inheritance} dengan tambahan satu property, gunakan property tambahan itu pada fungsi yang sama yang ada di parent-class {overriding}, dan buatlah satu fungsi tambahan yang mempunyai nama yang sama dengan tambahan variabel {overloading}.
  NOTE: Jangan buat fungsi kosong, buat yang meaningful dan implementasikan apa yang kita sudah pelajari diprontera.
 */

struct Resolution {
    let width, height : Int
}

class VideoMode {
    var resolution : Resolution
    var interlaced : Bool
    var frameRate : Double
    var name: String
    
    init(res: Resolution, interlaced: Bool, frameRate: Double, name: String) {
        self.resolution = res
        self.interlaced = interlaced
        self.frameRate = frameRate
        self.name = name
    }
    
    func changeResolution(res: Resolution) {
        self.resolution = res
    }
}

class Hd: VideoMode {
    override func changeResolution(res: Resolution) {
        self.resolution = res
    }
    
    func changeResolutionAndName(res: Resolution, name: String) {
        self.resolution = res
        self.name = name
    }
}

let resol = Resolution(width: 640, height: 480)
let videoMode = VideoMode(res: resol, interlaced: false, frameRate: 12.0, name: "Apa")
let hd = Hd(res: Resolution(width: 1080, height: 1920), interlaced: false, frameRate: 60.0, name: "Full HD")

print(videoMode.name)
videoMode.changeResolution(res: Resolution(width: 600, height: 600))
print(videoMode.resolution)

print(hd.name)
hd.changeResolutionAndName(res: Resolution(width: 2000, height: 2000), name: "Si Paling HD")
print(hd.resolution, hd.name)
