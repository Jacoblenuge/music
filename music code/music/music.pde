//Library: use Sketch / Import Library / Add Library / Minim
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//
//Global Variables
Minim minim; //creates object to access all functions
AudioPlayer song1; //creates "Play List" variable holding extensions WAV, AIFF, AU, SND, and MP3
//
void setup () {
  size(500, 600); //Remind you of Display Geometry
  minim = new Minim(this); //load from data directory, loadFile should also load from project folder, like loadImage
  song1 = minim.loadFile("../usemusic/downlodedmusic/Fortunate_Son.mp3");//able to pass absolute path, file name & extension, and URL
  song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
}//End setup
void draw(){}//end draw
//
void keyPressed() {
  if ( key=='P' || key=='p' ) song1.play(); //Parameter is milli-seconds from start of audio file to start playing (illustrate with examples)
  //int loopNum = 2;
  if ( key=='L' || key=='l' ) song1.loop(0); //Parameter is Parameter is number of repeats
}//End keyPressed
//
void mouseClicked() {}//End mousePressed
//
//End Main Program
