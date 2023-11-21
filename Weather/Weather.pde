import http.requests.*;

String urlAPI = "http://api.weatherapi.com/v1/current.json?key=1e4e4145e1eb4f4e8dd35351232111&q=Yogyakarta&aqi=no";

PFont font;
PImage imgIcon;
String strName;
String strText;
Double dblTempC;
Double dblWindkph;

void setup() {
  size(480, 640);
  GetRequest req = new GetRequest(urlAPI);
  req.send();
  //println(req.getContent());
  JSONObject jsonObj = parseJSONObject(req.getContent());
  
  strName = jsonObj.getJSONObject("location").getString("name");
  strText = jsonObj.getJSONObject("current").getJSONObject("condition").getString("text");
  imgIcon = loadImage("https:" + jsonObj.getJSONObject("current").getJSONObject("condition").getString("icon"));
  dblTempC = jsonObj.getJSONObject("current").getDouble("temp_c");
  dblWindkph = jsonObj.getJSONObject("current").getDouble("wind_kph");
}

void draw() {
  background(0);
  imageMode(CENTER);
  image(imgIcon, 240, 100);
  
  //textAlign(CENTER, CENTER);
  //fill(#3284ED);
  //textSize(36);
  //text(strName, 240, 80);
  //textSize(18);
  //fill(#F0FCFB);
  //text(strText, 240, 110);
  ////textFont(font);
  
  fill(#3284ED);
  textSize(36);
  text(strName, 200, 100);
  
  fill(#E9ED32);
  textSize(24);
  text(dblTempC.toString()+ "C", 200, 140);
  text(dblWindkph.toString() + "Kph", 250, 160);
}
