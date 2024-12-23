// advanced_drawStar
// 2024/05/20
// 1-4-15 Koki Kurihara

   int a=(int)random(400);
   int b=(int)random(400);
   int c=(int)random(400);

void setup()
{
  size(400,400);
}

void draw()
{
  background(255);
  
  drawStar(a%400,100,30);
  drawStar(b%400,200,30);
  drawStar(c%400,300,30);
  drawStar(mouseX,mouseY,50);
  
  a=a+1;
  b=b+1;
  c=c+1;
  
}

void drawStar(int x,int y,int r)
{ 
  line(x+r*cos(2*PI-PI/10),y+r*sin(2*PI-PI/10),x+r*cos(2*PI-PI/10-2*PI/2.5),y+r*sin(2*PI-PI/10-2*PI/2.5));
  line(x+r*cos(2*PI-PI/10),y+r*sin(2*PI-PI/10),x+r*cos(2*PI/2.5-PI/10),y+r*sin(2*PI/2.5-PI/10));
  line(x+r*cos(2*PI-PI/10-2*PI/2.5),y+r*sin(2*PI-PI/10-2*PI/2.5),x+r*cos(PI/2.5-PI/10),y+r*sin(PI/2.5-PI/10));
  line(x,y-r,x+r*cos(PI/2.5-PI/10),y+r*sin(PI/2.5-PI/10));
  line(x,y-r,x+r*cos(2*PI/2.5-PI/10),y+r*sin(2*PI/2.5-PI/10)); 
}
