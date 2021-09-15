// There are different ways that you can read the data. We focus on using loadTable function to load the data in the form of a table and 
// then we choose either of array or arrayList data structure to store the data in Processing. This way we can manipulate the data.

class FileIO{
  Table t;
 
  FileIO(){
    t=loadTable("CalgaryWeather.csv","header");// We load the csv data in the form of table with Table data structure into the Processing.
   //This is a FileIO constructor which initializes the declared table object of type Table class.
  }
 
  TemperatureData[] readFile(){
    TemperatureData []array=null;
    int i=0;
    for(TableRow row : t.rows()){
      TemperatureData a=new TemperatureData(row.getInt("Year"),row.getInt("Month"),row.getFloat("Max Temperature"),row.getFloat("Min Temperature"),row.getFloat("Snow Fall"),row.getInt("Degrees"));
      if(array==null){
        array=new TemperatureData[1];
      }
      else{
        array=(TemperatureData[])expand(array,array.length+1);
      }
      array[i]=a;
      i++;
    }
  return array;
  }
}
