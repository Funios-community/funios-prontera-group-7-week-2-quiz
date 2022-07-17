import UIKit

/* Quiz Optional */
let name = "Nadia Darin Putri Adinda"

func getUsername(userID: String?) -> String! { // jangan dirubah
    // Check jika userID tidak nil maka return {nama kamu}. Jika userID nil maka return nil.
    guard let _ = userID else {
        return nil
    }
    
    return name
}

let usernameNoData = getUsername(userID: nil) // jangan dirubah
print("Namaku adalah \(usernameNoData ?? name + " funios")") // Fix the error, pastikan outputnya harus seperti ini "Namaku adalah {nama kamu} funios". dengan tetap mempertahankan variabel usernameNoData disitu.

let username = getUsername(userID: "AnyID") // jangan dirubah
if username != nil {
    print("Usernamenya \(username!)") // Fix the warning without using {default value or `??`}
    print("Usernamenya tidak ada \(username != nil)") // Should print true
    print("Nama kamu terdiri dari \((username ?? "tejo").count) huruf") // Fix the error
}

/* Quiz Class vs Struct
 Buatlah 1 buah struct dengan minimal 2 property.
 Buatlah sebuah class yang berkaitan dengan struct yang kalian buat, pastikan struct tersebut menjadi property dari class ini, didalam class ini pastikan kalian mempunyai 1 buah fungsi yang menggunakan property struct yang kalian buat tersebut.
 Buatlah sebuah child-class {inheritance} dengan tambahan satu property, gunakan property tambahan itu pada fungsi yang sama yang ada di parent-class {overriding}, dan buatlah satu fungsi tambahan yang mempunyai nama yang sama dengan tambahan variabel {overloading}.
  NOTE: Jangan buat fungsi kosong, buat yang meaningful dan implementasikan apa yang kita sudah pelajari diprontera.
 */

struct Buku {
    let judul: String
    let penulis: String
    let tahun_terbit: Int
    let jumlah_halaman: Int
    let best_seller: Bool
}

class Manusia {
    let nama: String
    let umur: Int
    let asal: String
    let buku_favorit: Buku?
    private(set) var teman_teman: Array<Manusia>
    
    
    init(nama: String, umur: Int, asal: String, buku_favorit: Buku?, teman_teman: Array<Manusia>) {
        self.nama = nama
        self.umur = umur
        self.asal = asal
        self.buku_favorit = buku_favorit
        self.teman_teman = teman_teman
    }
    
    func perkenalan(){
        print("Halo! nama saya \(nama), saya berumur \(umur) tahun dan berasal dari \(asal).")
        if let buku = buku_favorit {
            print("Saya senang membaca. Buku favorit saya berjudul \(buku.judul).")
        }
        print("Salam kenal.")
    }
    
    func tambahTeman(teman: Manusia){
        teman_teman.append(teman)
    }
    
}

class Siswa: Manusia {
    let sekolah: String
    
     init(nama: String, umur: Int, asal: String, buku_favorit: Buku?, teman_teman: Array<Manusia>, sekolah: String) {
        self.sekolah = sekolah
        super.init(nama: nama, umur: umur, asal: asal, buku_favorit: buku_favorit, teman_teman: teman_teman)
    }
    
    func perkenalan(hobi: String) {
        print("Halo! nama saya \(nama), saya bersekolah di \(sekolah), hobi saya adalah \(hobi).")
    }
    
    override func tambahTeman(teman: Manusia) {
        super.tambahTeman(teman: teman)
        print("Senang berteman dengan kamu, \(teman.nama)!")
    }
}

let buku = Buku(judul: "Bobo", penulis: "xxx", tahun_terbit: 1111, jumlah_halaman: 2000, best_seller: true)

let orang = Manusia(nama: "Budi", umur: 3, asal: "Palembang", buku_favorit: nil, teman_teman: [])

orang.perkenalan()

let siswa = Siswa(nama: "Lala", umur: 10, asal: "Palembang", buku_favorit: buku, teman_teman: [], sekolah: "Sekolah-sekolahan")

siswa.perkenalan()
siswa.perkenalan(hobi: "tidur")
siswa.tambahTeman(teman: orang)
print(siswa.teman_teman.first!.nama)
