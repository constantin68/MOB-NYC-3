//: Playground - noun: a place where people can play


// Simulate a Game:
// - Make 3 Classes, "Player", "GoodPlayer", "BadPLayer"
// - Player has an 'attack' method, wich returns an Int, the amount of damage the attack does
// - GoodPlayer and BadPlayer, when they attack, attack with different magnitudes (between GoodPlayer and BadPLayer or (Bonus) different from attack to attack.
// - Players also have a health property (as an Int that defaults to 100) and an "isAlive" method (returns Boolean). A Player is alive if their health is above 0.
// Create a "Match" class, wich takes two players during initialization.
// - It has a 'playGame()' method, wich pits each player against each other, alternating attacks till one of the players is no longer alive. At the end of the match, return the winner.
// - Hint: This means you'll need a way to have the attack of one player affect the health of the other.
// Pit one GoodPlayer against a BadPlayer.
// Bonus: Give players names, print those out before they match.

import UIKit

class Player {
    var dmg: Int = 5
    var health: Int = 100
    var name: String

    init(name: String){
        self.name = name
    }
    
    func attack() -> Int {
        return dmg
    }
    
    func takeDamage(damageInflicted: Int){
        self.health = self.health - damageInflicted
    }
    
    func isAlive() -> Bool {
        return self.health > 0
    }
}

class GoodPlayer: Player {
    override init(name: String) {
        super.init(name: name)
        self.dmg = 2
    }
    
}

class BadPlayer: Player {
    override init(name: String) {
        super.init(name: name)
        self.dmg = 3
    }
}

class Match{
    var player1: Player
    var player2: Player
    
    init(player1: Player, player2: Player) {
        self.player1 = player1
        self.player2 = player2
    }
    
    func playGame() -> String {
        var dmg: Int = 0
        while player1.isAlive() && player2.isAlive() {
            dmg = player1.attack()
            player2.takeDamage(dmg)
            
            dmg = player2.attack()
            player1.takeDamage(dmg)
        }
        
        if player1.isAlive() {
            println("And the Winner is .... \(player1.name)!")
            return player1.name
        } else {
            println("And the Winner is .... \(player2.name)!")
            return player2.name
        }
    }
}

let Mario = GoodPlayer(name: "Mario")
let Luigi = GoodPlayer(name: "Luigi")
let Bowser = BadPlayer(name: "Bowser")

let championshipFight = Match(player1: Mario, player2: Bowser)
championshipFight.playGame()
