
void snowFall(TemperatureData [] weather)
{
  stroke(255);
  text("cm", 10,82);
  line(25, screenY-25, 1180,screenY-25); //For x axis
  fill(255);//for the text
  stroke(255);
  text("YEAR",1150,screenY-10);
  line(25, 90, 25,screenY-25); //for the y axis
   float nextYearAt=25+24; //30*12 values between x1=25 x2=1110. XDIFF=1110-25=1085. spacing =1085/(360)//goes to 1101(1110) 
   for (int i=12;i<weather.length;i+=24)//spacing=3.01 for each month. therefore 24 for 2 yrs 72.
   {
   fill(255);
   text(weather[i].d.y,nextYearAt,screenY-10);
   nextYearAt+=72; 
   }
   float meterYPoint=685;
   for (int i=0;i<=30;i+=5)
   {
     text(i,10,meterYPoint);
     meterYPoint-=115;
   }
   float snowing=25+24;
   for(int i=0;i<weather.length;i++)
   {
     strokeWeight(2);
     strokeCap(SQUARE);
     stroke(255,255,255);//WHITE
     line(snowing,screenY-25-(((weather[i].snow*23))),snowing,screenY-25);
     snowing+=38/12;
     //Scale between 90 to 675. each 5 meters is 115 pixels. so each meter is 115/5
   }
}
