void BarChart()
{
  bar_chart = true;
  if (bar_chart){
  background(0);
 makeBarChart(weather);
 drawOver(weather);
 setGraphs(weather);
  }
  else{
    background(0);
    bar_chart = true;
  }
  
}

void MIN()
{
  background(0);
  float MinBarAt=26;
  for(int i=0;i<weather.length;i++)
  {
    strokeWeight(2);
    strokeCap(SQUARE);
    stroke(0,128,255);//BLUE
    line(MinBarAt,350-(((weather[i].min)*10)),MinBarAt,screenY/2);
    MinBarAt+=38/12;
  }
  setGraphs(weather);
}
void MAX()
{
  background(0);
  float MaxBarAt=26;
  for(int i=0;i<weather.length;i++)
   {
     strokeWeight(2);
     strokeCap(SQUARE);
     stroke(255,0,0);//RED
     line(MaxBarAt,350-(((weather[i].max)*10)),MaxBarAt,screenY/2);
     MaxBarAt+=38/12;
   }
   setGraphs(weather);
}
void Scatterplot()
{
  bar_chart = false;
 background(0);
 makeScatterChart(weather);
 setGraphs(weather);
}
void Min()
{
  background(0);
  float MinPointAt=26;
   for(int i=0;i<weather.length;i++)
   {
     //smooth(6);
     fill(0,128,255);//BLUE
     noStroke();
     circle(MinPointAt,350-(((weather[i].min)*10)),5);
     MinPointAt+=38/12;
  }
  setGraphs(weather);
}
void Max()
{
  background(0);
  float MaxPointAt=26;
   for(int i=0;i<weather.length;i++)
   {
     //smooth(6);
     fill(255,0,0);
     noStroke();
     circle(MaxPointAt,350-(((weather[i].max)*10)),5);
     MaxPointAt+=38/12;
   }
   setGraphs(weather);
}
void Snow_Fall()
{
  background(0);
  snowFall(weather);
}
void January()
{
 chooseGraph(1);
}
void February()
{
  chooseGraph(2);
}
void March()
{
  chooseGraph(3);
}
void April()
{
  chooseGraph(4);
}
void May()
{
  chooseGraph(5);
}
void June()
{
  chooseGraph(6);
}
void July()
{
  chooseGraph(7);
}
void August()
{
  chooseGraph(8);
}
void September()
{
  chooseGraph(9);
}
void October()
{
  chooseGraph(10);
}
void November()
{
  chooseGraph(11);
}
void December()
{
  chooseGraph(12);
}
void OFF()
{
  background(0);
  textSize(20);
  text("THANK YOU",550,350);
  textSize(12);
  
}
