int myx = 250;
int myy = 455;
boolean survive = true;

 //declare bacteria variables here   
Meteor[] bob = new Meteor[20];
void setup()   
 {     
   size(500,500);
   //initialize bacteria variables here   
   for(int i = 0; i < bob.length; i++){
     bob[i] = new Meteor();
   }
   
 }   
 void draw()   
 {    
   //move and show the bacteria   
   background(80);
     
   //blackhole
   ellipse(myx, 460, 150,45);
   ellipse(myx, 458, 125,33);
   ellipse(myx, myy, 100,20);

   if (mouseX > myx)
     myx+=(int)(Math.random()*5)-1;
   else 
     myx+=(int)(Math.random()*5)-3;   
   
   //meteor
   
    for(int i=0; i < bob.length; i++){
      bob[i].show();
      bob[i].move(); 
     }
    }
   

 
 class Meteor    
 {     
   //lots of java!   
   float X, Y, largenss, tallness, speedo;
   color myColor;
   boolean survive;
   void show()
   {
      if(((mouseX-10 < X)||(X < mouseX+10)) &&(Y == myy))
        survive = false;
      if(survive == true)
        fill(myColor);
        ellipse(X,Y, largenss,tallness);
   }
   void move()
   {
     //X = X + (int)(Math.random()*3)-3;
     //Y = Y + (int)(Math.random()*5);
     //X = speedo + mouseX;
     //X = mouseX;
       
     if(X > width)
       X = (int)(Math.random()*50);
       
     Y = Y + (int)(Math.random()* 10);

     if(Y > height)
       Y = 0;
     
     //} else{
     //  survive == true;
     //}
   }
   Meteor(){
     survive = true;
     X = (int)(Math.random()*480)+10;
     Y = 50;
     largenss = (int)(Math.random()*10)+5;
     tallness = (int)(Math.random()*10)+5;
     myColor = color(((int)(Math.random()*254)+1), ((int)(Math.random()*254)+1), ((int)(Math.random()*254)+1));
     speedo = 1;
   }
   
 }
