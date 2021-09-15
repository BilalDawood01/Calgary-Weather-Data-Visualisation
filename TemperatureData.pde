class TemperatureData{
  Date d;
  float max;
  float min;
  float snow;
  int degrees;
  TemperatureData(int year,int month,float a,float b,float c,int degree){
    d=new Date(year, month);
    max=a;
    min=b;
    snow=c;
    degrees=degree;
  }
}
