import themidibus.*;

JSONArray data;
MidiBus myBus;

int loadData() {
  // load some quantitative data to use as another parameter to sketch
}

void setup() {
  frameRate(50);
  size(960, 480);
  data = loadData();

  MidiReceiver receiver = new MidiReceiver(); // workaround for nullPointerException
  myBus = new MidiBus(receiver, "USB MID", "USB MID");
}


public class MidiReceiver { 
    void noteOn(int channel, int pitch, int velocity) { // not getting data consistently  
      //println(pitch);
      loop();
    }
}

int i = 0;
void draw() {
  background(51); // remove previous circle
  int diameter = abs(data.getInt(i));
  circle(480, 240, diameter);
  i = i + 1;
  noLoop();
}
