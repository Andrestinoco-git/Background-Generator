class Random
{
  Random()
  {
  }
  void randomOption()
  {
    noStroke();
    fill(c2,c,c);
    rect(width-420,yRect+20,300,300);
    textSize(100);
    fill(c,c3,c3);
    text("Random",width-420,yRect+100);
    if(mouseX<width-120&&mouseX>width-420&&mouseY>yRect+20&&mouseY<yRect+320&&draw==false&&random==false&&shapes==false)
    {
      fill(c2,c2,c);
      rect(width-420,yRect+20,300,300);
      textSize(100);
      fill(c,c3,c);
      text("Random",width-420,yRect+100);
      if(mousePressed&&random==false)
      {
         pressNoise.play();
        fill(c3,c3,c2);
        rect(width-420,yRect+20,300,300);
        mousePressed=false;
        random=true;
      }
    }
  }
  void randomBackground()
  {
    for(i=final1-200;i<500;i++)
    {
      fill(final2+random(-155,150),final3+random(-150,150),final1+random(-150,150));
      noFill();
      stroke(final2+random(-155,150)+i*2,final3+random(-150,150),final1+random(-150,150));
      strokeWeight(random(5,8));
      ellipse(random(i*20),random(i*20),random(i*2),random(i*3));
      strokeWeight(random(1,5));
      rect(random(i*20),random(i*20),random(i*2),random(i*3));
      if(int(random(1,2))==1)
      {
        fill(final2+random(-155,150),final3+random(-150,150),final1+random(-150,150),random(1,100));
        rect(random(i*20),random(i*20),random(i*2),random(i*3));
      }
      else
      {
        noFill();
        line(20+i*10,random(height),20+i*10,random(height));
      }
    }
  }
}
