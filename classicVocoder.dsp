declare name      "classicVocoder";
declare version   "0.7";
declare author    "Bart Brouns";
declare license   "GNU 3.0";
declare copyright "(c) Bart Brouns 2014";
declare credits   "PitchTracker by Tiziano Bole, qompander by Katja Vetter,supersaw by ADAM SZABO,CZ oscillators by Mike Moser-Booth, saw and square oscillators adapted from the faust library" ;

//-----------------------------------------------
// imports
//-----------------------------------------------
//when cloning from git, checkout the submodules to get qompander
//howto: http://stackoverflow.com/questions/7813030/how-can-i-have-linked-dependencies-in-a-git-repo

import ("lib/common.lib");
// specific to this synth:
import ("lib/FullGUI.lib");
import ("lib/classicVocoder.lib");

//-----------------------------------------------
// process
//-----------------------------------------------
/*process = volFilter;*/
/*process = _<:par(i, nrBands, volFilter);*/
process(audio) = StereoVocoder(audio,PitchTracker(audio)) ;
/*process = VocoderFreqs(1,2);*/
/*process = StereoVolFilterBank(nrBands);*/
/*process(audio) =  analizers(audio);*/
/*process(audio) = (audio,_:bandEnv);*/
/*process(freq,audio) =  (vocoderCenters(freq),(vocoderOsc(freq)<:bus(nrBands)),analizer(voice(audio),freq), (vocoderQ<:bus(nrBands))):StereoVolFilterBank(nrBands):vocoderMixer:par(i, 2, _*0.01):WidePanner(vocoderWidth);*/
/*process = (bus(nrBands*4)):par(i, nrBands, volFilter);*/
