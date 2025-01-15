//
//  main.swift
//  Moster Town
//
//  Created by Nazar Odemchuk on 30/9/2024.
//

import Foundation


var myTown = Town(region: "West", population: 0, stoplights: 6)
myTown?.printDescription()
let myTownSize = myTown?.townSize
print(String(describing: myTownSize))
myTown?.changePopulation(by: 1_000_000)
print("Size: \(String(describing: myTown?.townSize)); population: \(String(describing: myTown?.population))")



var fredTheZombie: Zombie? = Zombie(limp: false, fallingApart: false, town: myTown, monsterName: "Fred")
fredTheZombie?.terrorizeTown()
fredTheZombie?.town?.printDescription()

var convenientZombie = Zombie(limp: true, fallingApart: false)

print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")
fredTheZombie?.victimPool = 500
print("Victim pool: \(String(describing: fredTheZombie?.victimPool))")

print(Zombie.spookyNoise)
if Zombie.isTerrifying {
    print("Run away!")
}

fredTheZombie = nil

dispatchMain()
