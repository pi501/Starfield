Particle [] starfield = new Particle[1000];
void mousePressed()
  {
    for(int i = 0; i < starfield.length; i++)
    {  
      starfield[i].reset();
    }
  }
void setup()
{
  size(600,600);
  background(0,0,0);
  for (int i = 0; i < starfield.length; i++)
  {
    if ((int)(Math.random()*30) == 1 )
    {
      starfield[i] = new OddballParticle();
    }
    else 
    {
      starfield[i] = new Particle();
    }
  }
}
void draw()
{
  background(0,0,0);
  for (int i = 0; i < starfield.length; i++)
  {
    
    starfield[i].show();
    starfield[i].move();
  }
}
class Particle
{
  double MyX, MyY, MySpeed, MyAngle;
  int MyColor;
  Particle()
  {
    MyX = 300.0;
    MyY = 300.0;
    MySpeed = Math.random()*3;
    MyAngle = Math.random()*2*Math.PI;
    MyColor = color((int)(Math.random()*255), (int)(Math.random()*255) ,(int)(Math.random()*255));
  }
  void move()
  {
     MyX = MyX + (Math.cos(MyAngle)*MySpeed); 
     MyY = MyY + (Math.sin(MyAngle)*MySpeed); 
  }
  void show()
  {
    fill(MyColor);
    ellipse((float)MyX,(float)MyY,10,10);
  }
  void reset()
  {
     MyX = 300.0;
     MyY = 300.0;
  }
}

class OddballParticle extends Particle
{
  OddballParticle()
  {
    MyX = 300.0;
    MyY = 300.0;
    MySpeed = Math.random()*1;
    MyAngle = Math.random()*2*Math.PI;
    MyColor = color(0, (int)(Math.random()*255) ,(int)(Math.random()*127 +128));
  }
  void move()
  {
     MyX = MyX + (Math.cos(MyAngle)*MySpeed); 
     MyY = MyY + (Math.sin(MyAngle)*MySpeed); 
  }
  void show()
  {
    fill(MyColor);
    ellipse((float)MyX,(float)MyY,30,30);
  }
}

