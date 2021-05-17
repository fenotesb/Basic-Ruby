
class Ship {
  constructor(name, captain, fuel) {
    this.name = name
    this.captain = captain
    this.fuel = fuel
  }
}

let ship = new Ship('Serenity', 'Malcolm Reynolds', 100)

console.log(ship.name) // 'Serenity'
console.log(ship.captain) // 'Malcolm Reynolds'
console.log(ship.fuel) // 100
