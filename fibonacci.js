//This code recreates the Fibonacci sequence. The Fibonacci sequence is a series of numbers where a number is the addition of the last two numbers.

let fibonacci = (n) => {
   let second_to_last_num = 0;
   let last_num = 1;
   let current_num = 0;

   let numbers = [];
   numbers.push(current_num);

   for (i = 0; i <= n; i++) {
     second_to_last_num = last_num;
     last_num = current_num;
     current_num = second_to_last_num + last_num;
     numbers.push(current_num);
   }
   return numbers;
 }

console.log(fibonacci(7))
