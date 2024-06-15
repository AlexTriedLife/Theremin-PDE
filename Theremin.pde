import g4p_controls.*;
import processing.sound.*;


Synthesizer synth;
Reverb verb;
Delay delay;
AudioIn input;
float oscFreq;
boolean isPlaying = false;
boolean useMouse = true;
void setup() {
  input = new AudioIn(this, 0);
  verb = new Reverb(this);
  delay = new Delay(this);
  synth = new Synthesizer(this);


  size(800, 600);
  synth.osc.play();
  println(mouseX, mouseY);
  createGUI();
}

void draw() {

  background(255);
  if  (isPlaying)
    synth.osc.amp(1);

  else
    synth.osc.amp(0);

  if (useMouse)
    oscFreq = ceil(map(mouseY, 0, height, 40, 3000));


  if  (oscFreq < 40)
    oscFreq = 40;

  else if  (oscFreq > 3000)
    oscFreq = 3000;

  synth.osc.freq(oscFreq);
  ev_txa_frequency(txa_frequency, GEvent.VALUE_CHANGING);
  fill(0);
}
