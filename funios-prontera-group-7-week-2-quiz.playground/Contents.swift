import UIKit

/* Quiz Optional */
func getUsername(userID: String?) -> String! { // jangan dirubah
    // Check jika userID tidak nil maka return {nama kamu}. Jika userID nil maka return nil.
    guard let userID = userID else {
        return nil
        
    }
       return userID
}

let usernameNoData = getUsername(userID: nil) // jangan dirubah
print("Namaku adalah \(usernameNoData ?? "Ferrian" + " funios")") // Fix the error, pastikan outputnya harus seperti ini "Namaku adalah {nama kamu} funios". dengan tetap mempertahankan variabel usernameNoData disitu.

let username = getUsername(userID: nil) // jangan dirubah
if username == nil {
    print("Usernamenya \(String(describing: username))") // Fix the warning without using {default value or `??`}
    print("Usernamenya tidak ada \(username == nil)") // Should print true
    print("Nama kamu terdiri dari \(username ?? String("tejo".count)) huruf") // Fix the error
}
print(username ?? "Helo ges")

/* Quiz Class vs Struct
 Buatlah 1 buah struct dengan minimal 2 property.
 Buatlah sebuah class yang berkaitan dengan struct yang kalian buat, pastikan struct tersebut menjadi property dari class ini, didalam class ini pastikan kalian mempunyai 1 buah fungsi yang menggunakan property struct yang kalian buat tersebut.
 Buatlah sebuah child-class {inheritance} dengan tambahan satu property, gunakan property tambahan itu pada fungsi yang sama yang ada di parent-class {overriding}, dan buatlah satu fungsi tambahan yang mempunyai nama yang sama dengan tambahan variabel {overloading}.
  NOTE: Jangan buat fungsi kosong, buat yang meaningful dan implementasikan apa yang kita sudah pelajari diprontera.
 */

enum ContentType {
    case comedy, horror, reviewer
}

struct VideoDetail {
    let title: String
    var view: Int
    var commentCount: Int
    var isTrending: Bool
}

class YoutubeChannel {
    let name: String
    var contentType: ContentType
    var subscriber: Int
    var isVerified: Bool
    
    init(
        _ name: String,
        _ contentType: ContentType,
        _ subscriber: Int,
        _ isVerified: Bool
    ) {
        self.name = name
        self.contentType = contentType
        self.subscriber = subscriber
        self.isVerified = isVerified
    }
    
    func myChannel(){
        print("Halo ges nama channel saya \(name), tipe content saya \(contentType). Sekarang subsciber saya \(subscriber)")
    }
    func isMyChannelVerified() -> Bool {
        return isVerified
    }
    
    func greetingVideo(){
        print("Video ini dibuat oleh \(name) dengan tipe content \(contentType)")
    }
}
  

class Video: YoutubeChannel {
    let videoDetail: VideoDetail
    let creator: YoutubeChannel
    let creatorList: [YoutubeChannel]
    
    init(
        videoDetail: VideoDetail,
        creator: YoutubeChannel,
        creatorList: [YoutubeChannel]
    ){
        self.videoDetail = videoDetail
        self.creator = creator
        self.creatorList = creatorList
        super.init(creator.name, creator.contentType, creator.subscriber, creator.isVerified)
    }
    
    override func greetingVideo() {
        super.greetingVideo()
    }
    
    func getVideoDetail(){
        print("Title = \(videoDetail.title)\nJumlah view = \(videoDetail.view)\nTotal Comment = \(videoDetail.commentCount)\nVerified = \(videoDetail.isTrending)")
    }
    
    func getCreator() -> [YoutubeChannel]{
        var creatorListTemp = [YoutubeChannel]()
        for creatorTemp in creatorList {
            if(creatorTemp.subscriber > 2000000){
                creatorListTemp.append(creatorTemp)
            }
        }
        return creatorListTemp
    }

}

var tretanMuslim = YoutubeChannel("Tretan Muslim", ContentType.comedy, 1000000, true)
var ewingHd = YoutubeChannel("Ewing HD", ContentType.horror, 2200000, true)
var gadgetin = YoutubeChannel("Gadgetin", ContentType.reviewer, 3000000, true)
var tretanMuslim1 = YoutubeChannel("Tretan Muslim", ContentType.comedy, 1000000, true)
var ewingHd2 = YoutubeChannel("Ewing HD", ContentType.horror, 2000000, true)
var gadgetin3 = YoutubeChannel("Gadgetin", ContentType.reviewer, 3000000, true)

let creatorList = [tretanMuslim,tretanMuslim1,ewingHd,ewingHd2,gadgetin,gadgetin3]

var vidDetailComedy = VideoDetail(title: "Last Hope Kitchen Kurma + Daging Sapi", view: 1500000, commentCount: 1240, isTrending: true)
var vidDetailHorror = VideoDetail(title: "Si Pocong Mumun", view: 500000, commentCount: 140, isTrending: false)
var vidDetailReview = VideoDetail(title: "Iphone 13 Pro vs Esia Hidayah", view: 2000000, commentCount: 51230, isTrending: true)

var videoComedy = Video(videoDetail: vidDetailComedy, creator: tretanMuslim, creatorList: creatorList)
//var videoHorror = Video(videoDetail: vidDetailHorror, creator: ewingHd)
//var videoReviewer = Video(videoDetail: vidDetailReview, creator: gadgetin)


videoComedy.getCreator()
//videoReviewer.greetingVideo(greetingSentence: "Halo guys video \(videoReviewer.creator.name)")
