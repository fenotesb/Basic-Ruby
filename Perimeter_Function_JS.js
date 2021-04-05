/*Write a JavaScript function to calculate the perimeter of a rectangle.

In main.js, write your function, then use a console.log to output your result.

Hint: The formula for calculating a rectangle's perimeter is as follows: p = 2 * width + 2 * height. With that in mind, what should your function's inputs, or arguments, be?

*/

let perimeter = (width , height) => {

  p = (width * 2) + (height *2);

  return p;
}

let w = 0;
let h = 0;


let message1 = "What is the heigth and weight of your rectangle?";

let message2 = "What is the heigth and heigth of your rectangle?";

prompt(message1,w);

prompt(message2,h);

let p = perimeter(w,h);

prompt(p);
