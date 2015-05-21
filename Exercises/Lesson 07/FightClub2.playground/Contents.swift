//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground"

class  Player {
    var name: String
    var damage: Int
    var health: Int = 100
    
    init (playerName: String){
        self.name = playerName
        self.damage = 5
    }
    func attack() -> Int {
        return self.damage
    }
    func isAlive() -> Bool {
        return self.health > 0
    }
    func takeDamage (damage: Int) {
        self.health = self.health - damage
        //self.health -= damage
    }
}
class GoodPlayer: Player {
    override init (playerName: String) {
        super.init(playerName: playerName)
        self.damage = 2
    }
}
class BadPlayer: Player {
    override init (playerName: String) {
        super.init(playerName: playerName)
        self.damage = 8
    }
}
class Match {
    var player1: Player
    var player2: Player
    
    init (player1: Player, player2: Player){
        self.player1 = player1
        self.player2 = player2
    }
    func playGame() -> String {
        // while loop because we have until one player's health is 0
        var damage: Int
        while player1.isAlive() && player2.isAlive() {
            damage = player1.attack()
            player2.takeDamage(damage)
            
            damage = player2.attack()
            player1.takeDamage(damage)
        }
        
        if player1.isAlive() {
            return player1.name
        } else {
            return player2.name
        }
    }
}
var a = GoodPlayer(playerName: "Allison")
var b = BadPlayer(playerName: "Raj")

var round1 = Match(player1: a, player2: b)

println(round1.playGame())



