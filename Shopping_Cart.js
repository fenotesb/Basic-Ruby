//Classes example
let eggs = { itemName: 'dozen eggs', quantity: 1 }
let milk = { itemName: 'gallon of milk', quantity: 1 }
let bread = { itemName: 'loaf of bread', quantity: 1 }
let butter = {itemName: 'stick of butter', quantitiy: 1}
let cheese = {itemName: 'lb of cheese', quantitiy: 1}


let shoppingCart = [eggs, milk, bread, butter,cheese]

shoppingCart.forEach((item) => {
  console.log(item.quantity + " " + item.itemName)
})
