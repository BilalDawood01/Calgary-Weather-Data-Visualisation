import controlP5.*;
//Table weather;
//FileIO weather= new FileIO();
//TemperatureData [] data = new TemperatureData[file.t.getRowCount()];
TemperatureData[] weather;
ControlP5 cp5;
int screenX=1200;
int screenY=700;
boolean bar_chart = true;


void setup() 
{
  textAlign(CENTER,CENTER);
  background(0);
  size(1200,700);
  //weather = loadTable ("CalgaryWeather.csv", "header");
  FileIO file = new FileIO();
  weather = file.readFile();//this is array of type temp data.
  //setGraphs(weather);
  cp5 = new ControlP5 (this);
  //cp5.addToggle ("MIN").setValue(0).setPosition (100,90).setSize(30,20).getCaptionLabel().align(CENTER,CENTER);
  cp5.addButton ("MIN").setValue(0).setPosition (100,90).setSize(30,20);
  cp5.addButton ("MAX").setValue(0).setPosition (140,90).setSize(30,20);
  
  cp5.addButton("Scatterplot").setValue(0).setPosition (200,30).setSize(70,50);
  cp5.addButton ("Min").setValue(0).setPosition (200,90).setSize(30,20);
  cp5.addButton ("Max").setValue(0).setPosition (240,90).setSize(30,20);
  
  cp5.addButton("Snow_Fall").setValue(0).setPosition (300,30).setSize(70,50);
  
  
  cp5.addButton("January").setValue(0).setPosition (400,30).setSize(70,20);
  cp5.addButton("February").setValue(0).setPosition (500,30).setSize(70,20);
  cp5.addButton("March").setValue(0).setPosition (600,30).setSize(70,20);
  cp5.addButton("April").setValue(0).setPosition (700,30).setSize(70,20);
  cp5.addButton("May").setValue(0).setPosition (800,30).setSize(70,20);
  cp5.addButton("June").setValue(0).setPosition (900,30).setSize(70,20);
  cp5.addButton("July").setValue(0).setPosition (400,60).setSize(70,20);
  cp5.addButton("August").setValue(0).setPosition (500,60).setSize(70,20);
  cp5.addButton("September").setValue(0).setPosition (600,60).setSize(70,20);
  cp5.addButton("October").setValue(0).setPosition (700,60).setSize(70,20);
  cp5.addButton("November").setValue(0).setPosition (800,60).setSize(70,20);
  cp5.addButton("December").setValue(0).setPosition (900,60).setSize(70,20);
  
  cp5.addButton("OFF").setValue(0).setPosition (1000,45).setSize(70,20);
  cp5.addButton ("BarChart").setValue(0).setPosition (100,30).setSize(70,50);
  bar_chart = true;
}
void draw()
{
  if (mousePressed)
  println(mouseX+","+mouseY);
  
}


//https://forum.processing.org/one/topic/simple-bar-graph-from-an-array.html
//https://www.kasperkamperman.com/blog/processing-code/controlp5-library-example1/
