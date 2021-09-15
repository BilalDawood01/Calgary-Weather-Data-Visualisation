void chooseGraph(int m)
{
  
  if(bar_chart)
  {
    background(0);
    showMonth(weather,m);
    setGraphs(weather);
  }
  else {
    background(0);
    showMonthSCAT(weather,m);
    setGraphs(weather);
  }
}
void ForMonthMaxBAR(int m)
{
  float maxFormonth=27+m;
  for (int n=m;n<weather.length;n+=12)
  {
  strokeWeight(2);
  strokeCap(SQUARE);
  stroke(255,0,0);//RED
  line(maxFormonth,350-(((weather[n].max)*10)),maxFormonth,screenY/2);
  maxFormonth+=36;
  }
}
void ForMonthMinBAR(int m)
{
  float minFormonth=27+m;
  for (int n=m;n<weather.length;n+=12)
  {
  strokeWeight(2);
  strokeCap(SQUARE);
  stroke(0,128,255);//BLUE
  line(minFormonth,350-(((weather[n].min)*10)),minFormonth,screenY/2);
  minFormonth+=36;
  } 
}
void drawOverMonth(TemperatureData [] weather,int m)
{
  float smallerOf2=27+m;
  for (int n=m;n<weather.length;n+=12)
  {
   if(((weather[n].max)*10)<0)
   {
    strokeWeight(2);
    strokeCap(SQUARE);
    stroke(255,0,0);//RED
    line(smallerOf2,350-(((weather[n].max)*10)),smallerOf2,screenY/2);
    smallerOf2+=36;
   }
    else
    {
    smallerOf2+=36;
    }
    float greaterOf2=26;
    if(((weather[n].min)*10)>0)
   {
    strokeWeight(2);
    strokeCap(SQUARE);
    stroke(0,128,255);//BLUE
    line(greaterOf2,350-(((weather[n].min)*10)),greaterOf2,screenY/2);
    greaterOf2+=36;
   }
    else
    {
    greaterOf2+=36;
    }
  }
}
void showMonth(TemperatureData [] weather, int m)
{
  for (int i =0;i<weather.length;i++)
  {
    
      ForMonthMaxBAR(m);
      ForMonthMinBAR(m);
      drawOverMonth(weather,m);
    
  }
}
void ForMonthMaxSCAT(int m)
{
  float maxFormonth=27+m;
  for (int n=m;n<weather.length;n+=12)
  {
   fill(250,0,0);//RED
   noStroke();
   circle(maxFormonth,350-(((weather[n].max)*10)),5);
   maxFormonth+=36;
  }
}
void ForMonthMinSCAT(int m)
{
  float minFormonth=27+m;
  for (int n=m;n<weather.length;n+=12)
  {
    fill(0,128,255);//BLUE
     noStroke();
     circle(minFormonth,350-(((weather[n].min)*10)),5);
     minFormonth+=36;
  } 
}
void showMonthSCAT(TemperatureData [] weather, int m)
{
  for (int i =0;i<weather.length;i++)
  {
      ForMonthMaxSCAT(m);
      ForMonthMinSCAT(m);
      //drawOverMonth(weather,m);
  }
}
