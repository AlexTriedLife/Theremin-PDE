class Synthesizer {
  Oscillator osc;
  SinOsc wavSin;
  SawOsc wavSaw;
  SqrOsc wavSqr;
  TriOsc wavTri;
  Pulse wavPls;
  /*
  The paramater PApplet app is to properly initialize
  the Synthesizer class in the correct scope
  */
  Synthesizer(PApplet app) {
    initWaveforms(app);
    this.osc = wavPls;
  }

  void initWaveforms(PApplet app) {
    wavSin = new SinOsc(app);
    wavSaw = new SawOsc(app);
    wavSqr = new SqrOsc(app);
    wavTri = new TriOsc(app);
    wavPls = new Pulse(app);
  }

  void setWaveform(Oscillator newWaveform) {
    this.osc.stop();
    this.osc = newWaveform;
    this.osc.play();
  }

}
