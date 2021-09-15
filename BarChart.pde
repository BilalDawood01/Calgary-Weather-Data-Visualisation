/*
 float nextDegreeAt =50 ;
 float MinBarAt=26;
 float MaxBarAt=26;
 float nextYearAt=25+24;
 smallerOf2+=38/12;
 float greaterOf2=26;
*/
void makeBarChart(TemperatureData [] weather)
{
  float MaxBarAt=26;
   for(int i=0;i<weather.length;i++)
   {
     //rect(MaxBarAt,3-(((weather.getFloat(i,2))/5)*50),MaxBarAt,screenY/2);
     strokeWeight(2);
     strokeCap(SQUARE);
     stroke(255,0,0);//RED
     line(MaxBarAt,350-(((weather[i].max)*10)),MaxBarAt,screenY/2);
     MaxBarAt+=38/12;
   }
   float MinBarAt=26;
   for(int i=0;i<weather.length;i++)
   {
     //rect(MaxBarAt,3-(((weather.getFloat(i,2))/5)*50),MaxBarAt,screenY/2);
     strokeWeight(2);
     strokeCap(SQUARE);
     stroke(0,128,255);//BLUE
     line(MinBarAt,350-(((weather[i].min))*10),MinBarAt,screenY/2);
     MinBarAt+=38/12;
  }
}
void drawOver(TemperatureData [] weather)
{
  float smallerOf2=27;
  for (int i=0; i<weather.length;i++)
  {
   if(((weather[i].max)*10)<0)
   {
    strokeWeight(2);
    strokeCap(SQUARE);
    stroke(255,0,0);//RED
    line(smallerOf2,350-(((weather[i].max)*10)),smallerOf2,screenY/2);
    smallerOf2+=38/12;
   }
    else
    {
    smallerOf2+=38/12;
    }
    float greaterOf2=26;
    if(((weather[i].min)*10)>0)
   {
    strokeWeight(2);
    strokeCap(SQUARE);
    stroke(0,128,255);//RED
    line(greaterOf2,350-(((weather[i].min)*10)),greaterOf2,screenY/2);
    greaterOf2+=38/12;
   }
    else
    {
    greaterOf2+=38/12;
    }
  }
}
