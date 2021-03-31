/*Write some code in main.js which will:

calculate the average score for each team and for both teams together
round the averages to the nearest integer for display
calculate the number of explorers passing the quiz (grade >= 70%)

Team 1 - JustJavaScript
Rami: 88
Natoya: 92
Max: 68
Lynn: 100

Team 2 - We Are Ruby
Sasha: 82
Mohammed: 98
Jennifer: 94
Denise: 92
*/



let team_two_score = 0;

let team_one_score = 0;

let scores = [88, 92, 68, 100, 82, 98, 94, 92];

let num_of_pasing_grades = 0;

let arraylength = scores.length;

let dividing_point = (arraylength/2)-1;

for (let i = 0; i < arraylength; i++);
{


  if (scores[i] >= 70)
  {
    num_of_pasing_grades++ ;
  }
  if (dividing_point >=i ) {
    team_one_score +=scores[i];
  }
  else{
    team_two_score +=scores[i];
}

let team_one_avg_score = team_one_score/(arraylength/2);
console.log("This is team one's average score",team_one_avg_score)

let team_two_avg_score = team_two_score/(arraylength/2);
console.log("This is team two's average score:", team_two_avg_score)

let total_average = team_two_score/arraylength;
console.log("This is team one's and two's average score combined:", total_average)

console.log("This is the number of Students who passed the exam: ",num_of_pasing_grades )
