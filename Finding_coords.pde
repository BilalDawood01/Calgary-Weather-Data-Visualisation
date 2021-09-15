void setGraphs(TemperatureData [] weather)
{
  stroke(255);
  line(25, 350, 1120,screenY/2); //For x axis
  fill(255);//for the text
  stroke(255);
  line(25, 25, 25,screenY-25); //for the y axis
   float nextYearAt=25+24; //30*12 values between x1=25 x2=1110. XDIFF=1110-25=1085. spacing =1085/(360)//goes to 1101(1110)
   text("YEAR",1110,screenY/2+15);
   for (int i=12;i<weather.length;i+=24)//spacing=3.01 for each month. therefore 24 for 2 yrs 72.
   {
     fill(255);
     text(weather[i].d.y,nextYearAt,screenY/2+15);
     strokeWeight(2);
     strokeCap(SQUARE);
     line(nextYearAt, screenY/2-5,nextYearAt,screenY/2+5);
     nextYearAt+=72; 
     strokeWeight(1);
   }
   text("DEGREE", 20,screenY-15);
  float nextDegreeAt =50 ;
  for (int i=0;i<weather.length;i++)
  {
    text(weather[i].degrees, 9, nextDegreeAt);
    strokeWeight(2);
    strokeCap(SQUARE);
    line (22, nextDegreeAt, 28, nextDegreeAt);
    strokeWeight(1);
    nextDegreeAt+=50;
  }
}
