//void Draw class created for the "design" mode
class Draw
{
  Draw()
  {
  }
  //drawOption to generate the "design" option on the main menu
  void drawOption()
  {
    //using text and rect an option is created on the main menu
    noStroke();
    fill(c2,c,c);
    rect(width/2-150,yRect+20,300,300);
    textSize(100);
    fill(c,c3,c3);
    text("Design",(width/2)-160,yRect+100);
    //if the mouse is hovering above the design option it changes color
    if(mouseX>width/2-150&&mouseX<width/2+150&&mouseY>yRect+20&&mouseY<yRect+320&&draw==false&&random==false&&shapes==false)
    {
      //fill changes the colour of the square and the colour of the text when the mouse is hovering over it
      fill(c2,c2,c);
      rect(width/2-150,yRect+20,300,300);
      fill(c,c3,c);
      text("Design",(width/2)-160,yRect+100);
      //if the mourse is pressed and draw is false
      if(mousePressed&&draw==false)
      {
        //draw is true, signifying that the user has chosen the design option
        draw=true;
        //a noise plays when the mouse is pressed on the option
         pressNoise.play();
         //mousePressed is false so the user can't hold down the mouse
        mousePressed=false;
      }
    }
  }
  //drawing created for the user to be able to design their own background
  void drawing()
  {
    //if mode1,mode2,mode3, and mode4=false this means the user has not selected a design style and is instructed to do so
    if(mode1==false&&mode2==false&&mode3==false&&mode4==false)
    {
      //the user is shown instructions on how to change between different design styles using 1,2,3,4 and going to the main menu using 5
      textSize(50);
      fill(c,c2,c3);
      text("Design your own background! Move the mouse to edit each design",0,100);
      text("Press 1,2,3, or 4 for different design styles (Press 5 for Menu button)",0,200);
      menu.backButton();
    }
    //if a key is pressed this runs
      if(keyPressed)
      {
        //if the key pressed is 1 then mode1=true indicating that the user is using design style 1
        if(key=='1')
        {
          mode1=true;
          mode2=false;
          mode3=false;
          mode4=false;
          mode5=false;
        }
        //if the key pressed is 2 then mode1=true indicating that the user is using design style 2       
        if(key=='2')
        {
          mode1=false;
          mode2=true;
          mode3=false;
          mode4=false;
          mode5=false;
        }
        //if the key pressed is 3 then mode1=true indicating that the user is using design style 3
        if(key=='3')
        {
          mode1=false;
          mode2=false;
          mode3=true;
          mode4=false;
          mode5=false;
        }
        //if the key pressed is 4 then mode1=true indicating that the user is using design style 4
        if(key=='4')
        {
          mode1=false;
          mode2=false;
          mode3=false;
          mode4=true;
          mode5=false;
        }
        //if the key pressed is 5 then mode5=true this shows the main menu option
        if(key=='5')
        {
          mode1=false;
          mode2=false;
          mode3=false;
          mode4=false;
          mode5=true;
          //backbutton is called to display the main menu option
          menu.backButton();
        }
        
      }
    
    //int x keeps track of how many ellipses have been drawn until x reaches width 
    for(int x=0;x<width;x+=30)
    {
      //if mode=1 the user is using design 1
      if(mode1==true)
      {
        //design 1 is created using ellipses, noFill, and a random stroke that slowly increases as x reaches width
          noFill();
          stroke(c3,c2,x);
          strokeWeight(5);
          ellipse(width/2,height/2,mouseX,x);
          ellipse(width/2,height/2,x,mouseY);
      }
      //if mode=2 the user is using design 2
      if(mode2==true)
      {
        //design 2 is created using ellipses, noFill, and a random stroke that slowly increases as x reaches width
          noFill();
          stroke(c3,c2,x);
          strokeWeight(5);
           ellipse(x,mouseY,mouseX,x-mouseY);
           ellipse(width-x,mouseY,mouseX,x-mouseY);
      }
      //if mode=3 the user is using design 3
      if(mode3==true)
      {
        //design 3 is created using ellipses, noFill, and a random stroke that slowly increases as x reaches width
          noFill();
          stroke(c3,c2,x);
          strokeWeight(5);
          fill(c,c,c2);
          noFill();
          ellipse(mouseX+x,mouseY,mouseY+x^x*2,mouseX-x);
      }
      //if mode=4 the user is using design 4
      if(mode4==true)
      {
        //design 3 is created using ellipses, noFill, and a random stroke that slowly increases as x reaches width
        noFill();
          stroke(c3,c2,x);
          strokeWeight(5);
          ellipse(mouseX,mouseY,mouseX+x,mouseX-x);
      }
    }
  }
}
