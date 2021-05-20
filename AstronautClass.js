class Astronaut {
  constructor(name, yearsActive) {
    this.name = name
    this.yearsActive = yearsActive || 0
    this.skills = []
  }

  learnSkill(skillName) {
    this.skills.push(skillName);
  }

  celebrateWorkiversary() {
    console.log('Party!');
    this.yearsActive += 1;
  }



jobTitle() {
    let level = ''
    if (this.yearsActive < 2) {
      level = 'Junior'
    } else if (this.yearsActive >= 2 && this.yearsActive < 5) {
      level = 'Midlevel'
    } else {
      level = 'Senior'
    }
    return `${level} Astronaut`
  }

}
let dorothy = new Astronaut('Dorothy', 5);
console.log(dorothy.yearsActive);
//=> 5
dorothy.celebrateWorkiversary()
//=> Party!
console.log(`${dorothy.name} is an astronaut and has ${dorothy.yearsActive} years of experience.`)
//=> Dorothy is an astronaut and has 6 years of experience.

  console.log(`${dorothy.name} is a ${dorothy.jobTitle()}.`)
