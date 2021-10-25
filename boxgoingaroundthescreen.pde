int rectx = 10;  
int recty = 10; 
int dx = 1;  
int dy = 1; 
void setup(){
  size(200,200);
  background(255, 255); 
}

void draw(){
  background(255); 
  rect(rectx,recty,10,10); 
  rectx+=dx; 
  if(rectx >= width-10) {
    rectx = width-10; 
    dx = 0; 
    recty+=dy; 
  }
  if(recty >= height-10){ 
    recty = height-10; // IDEA : Anthology cover music sheet : starts with measures then progresses abruptly to fortisimo HIGH 7TH CHORDS G7TH CHORDS ETC! tHEn pIANISSImO AND INNBETWEEN A GRAY AREA OF MEASURES PERHAPS? nOpE BECAUSE YEAH, MAYBE MEASURES TO FORTE AND EBTWEEN PIANO, IDK YET, SOMETHING IN MUSIC THAT IS KNOWN AS GRA/EY AREA
    dy = 0; 
    dx = -1; // when i make it 1 
    rectx+=dx; 
  }
  if(rectx <= 0){
    rectx = 0; 
    dy = 1; 
    recty-=dy; //here
  }
  if(recty <= 0){
    dy = 0; 
    recty = 0;
    dx = 1; 
    dy = 1; 
  }

    
  
  
  
  
  
}
