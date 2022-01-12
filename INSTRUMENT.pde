//pitch(Y) scale(x)1234567

import processing.sound.*;
int[] pitchList;
int[] scaleList;

void setup(){
	size(640,320,P2D);
	triOsc = new TriOsc (this);
	pitchList = {53,106,159};
	scaleList = {90,180,270};
}

void draw(){
	int scale = pitchSort(mouseX,scaleList[]);
	int pitch = pitchSort(mouseY,pitchList[]);
	triOsc.play(midiToFreq(scale,pitch), 0.8);
}

float midiToFreq(int s, int p) {
    return(pow(2,(s / 12.0))) * 440  * p;
}

int pitchSort(int num,int[] list){
	for (int i=0;i<list.size;i++){
		if(num<list[i]){
			int pitch = list[i];
			break;
		}
	}
	return pitch;
}