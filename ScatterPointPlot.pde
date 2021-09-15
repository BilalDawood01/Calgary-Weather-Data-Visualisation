
void makeScatterChart(TemperatureData [] weather)
{
  float MaxPointAt=26;
   for(int i=0;i<weather.length;i++)
   {
     //smooth(6);
     fill(255,0,0);//RED
     
     //point(MaxPointAt,350-(weather.length);
     noStroke();
     circle(MaxPointAt,350-(((weather[i].max)*10)),5);
     MaxPointAt+=38/12;
   }
   float MinPointAt=26;
   for(int i=0;i<weather.length;i++)
   {
     //smooth(6);
     fill(0,128,255);//BLUE
     noStroke();
     circle(MinPointAt,350-(((weather[i].min)*10)),5);
     MinPointAt+=38/12;
  }
}
