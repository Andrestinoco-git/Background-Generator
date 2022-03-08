//Menu class created to format main menu
class Menu
{
  Menu()
  {
    //defining variables to be used for formatting
    xRect=0;
    yRect=height/2+200;
    x2Rect=width;
    y2Rect=height;
    //creating 3 random color values to use throughout menu
    c=int(random(255));
    c2=int(random(255));
    c3=int(random(255));
    //titleX and titleY for position of the "THE BACKGROUND GENERATOR" text
    titleX=0;
    titleY=200;
    //Constrained titleY, so the title doesn't fly off the screen
    constrain(titleY,198,202);
  }
  
  //bottomOptions created to spawn a rectangle at the bottom of the screen for the 3 bottom options
  //this includes: design, Modes, and Random
  void bottomOptions()
  {
    strokeWeight(10);
    stroke(c,c2,c2);
    fill(c,c,c2);
    rect(xRect,yRect,x2Rect,y2Rect);
  }
  //title created to format the title for the main menu
  void title()
  {
    //if the main menu button has not been pressed then a rectangle will spawn, giving the title a cool fading effect
    if(back==false)
    {
    fill(c,c2,c2,3);
    rect(0,0,width,height);
    }
    else
    {
      //else if the main menu button has been pressed then the background will be stable
      background(c,c2,c2);
    }
    //titleX and titleY are added by a random number to make them vibrate in place
    titleX+=random(-2,2);
    titleY+=random(-2,2);
    //defining textsize,the fill color, and where the text will go on the main menu
    textSize(200);
    fill(random(255),c,c2);
    text("THE BACKGROUND", titleX, titleY);
    //another "THE BACKGROUND" is created above the other with a different colour for a cool 3D effect
    fill(c,c+10,c2);
    text("THE BACKGROUND", titleX, 200);
    fill(random(255),c,c2);
    text("GENERATOR", titleX, titleY+400);
    //another "GENERATOR" is created above the other with a different colour for a cool 3D effect
    fill(c,c+10,c2);
    text("GENERATOR", titleX, 600);
  }
  //backButton created to make the option of the main menu button. to send the user back to the main menu
  void backButton()
  {
    //rectMode(CORNER) so the rectangles used on the main menu don't move from their original positions
    rectMode(CORNER);
    //creating a small button at the bottom right corner of the screen with the text "MAIN MENU" on it
    noStroke();
    fill(c,c,c2);
    rect(width-100,height-100,100,100);
    fill(random(255));
    textSize(25);
    text("Main",width-80,height-50);
    text("Menu",width-80,height-20);
    //if the user hovers their mouse over the menu button it changes color
    if(mouseX>width-100&&mouseY>height-100)
    {
      //color changes and new rectangle and text appear to cover old menu button
      fill(255);
      rect(width-100,height-100,100,100);
      fill(random(255));
      textSize(25);
      text("Main",width-80,height-50);
      text("Menu",width-80,height-20);
      //if the mouse is pressed this means the user wants to go back to the main menu
      if(mousePressed)
      {
        //a noise is play when teh main menu button is pressed
        pressNoise.play(); 
        //back is set to true to store the fact that the user decided to go back to the main menu
        back=true;
        //shapes, draw, random, square, trig, and circle are set to false to let the program know that the user is restarting the selection process to generate their background
        shapes=false;
        draw=false;
        random=false;
        square=false;
        trig=false;
        circle=false;
        //amountChosen set to zero so the user has to choose howmany shapes they would like again
        amountChosen=0;
        //shapesChosen set to false to store that the user has not selected a mode
        shapesChosen=false;
        //i set to zero so that it can recount how many shapes it will have to generate
        i=0;
      }
    }
  }
}
