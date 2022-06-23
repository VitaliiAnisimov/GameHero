import Cocoa

class Hero {
    private var lifeCount: Int
    var isLive: Bool {
        if lifeCount > 0 {
            return true
        }else{
            return false
        }
    }
    
    init(lifeCount:Int){
        self.lifeCount = lifeCount
    }
    func hit(numberOfHit:Int) -> Int{
        lifeCount -= numberOfHit
        return lifeCount
    }
}
class SuperHero: Hero {
    private var lifeCount: Int = 0
    
    override func hit(numberOfHit: Int) -> Int {
        return lifeCount
    }
}
var elesei = Hero.init(lifeCount: 10)
elesei.hit(numberOfHit: 3)

print(elesei.isLive)

var efim = SuperHero.init(lifeCount: 5)
efim.hit(numberOfHit: 6)
print(efim.isLive)
