/*Write a JavaScript function to calculate the perimeter of a rectangle.

In main.js, write your function, then use a console.log to output your result.

Hint: The formula for calculating a rectangle's perimeter is as follows: p = 2 * width + 2 * height. With that in mind, what should your function's inputs, or arguments, be?

*/

let perimeter = (width , height) => {

  let p = (width * 2) + (height *2);


  return p;
}

let w = 0;
let h = 0;


let message1 = "What is the heigth of your rectangle?";

let message2 = "What is the length of your rectangle?";

w = prompt(message1);



h = prompt(message2);



let pfinal = perimeter(Number(w),Number(h));

alert("This is your rectangle perimeter: "+pfinal.toString());
