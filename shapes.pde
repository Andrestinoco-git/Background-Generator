//Shapes class created for the "Modes" option
class Shapes
{
    Shapes()
    {
    }
  //shapesOption method to create the shapes option the main menu
  void shapesOption()
  {
    //"Modes" Option created with a rectangle with no outline, a random color, and text to show the user the "modes" option
    noStroke();
    fill(c2,c,c);
    rect(120,yRect+20,300,300);
    fill(c,c3,c3);
    textSize(100);
    text("Modes", 120, yRect+100);
    //if the user hovers over the "Modes" option the option changes color
    if(mouseX<320+100&&mouseX>18+100&&mouseY>yRect+20&&mouseY<yRect+320&&draw==false&&random==false&&shapes==false)
    {
      //the option changes color when the mouse is hovering over it
      //the text also changes color
      fill(c2,c2,c);
      rect(20+100,yRect+20,300,300);
      fill(c,c3,c);
      textSize(100);
      text("Modes", 120, yRect+100);
      //if the mouse is pressed while the mouse is hovering over the "modes" option the user has selected this option
      if(mousePressed&&shapes==false)
      {
        //shapes is set to true to store the at the user has chosen the "modes" option
        shapes=true;
        //A noise is played to indicate that the otpion has been pressed
         pressNoise.play();
         //mousePressed set to false so the user cannot keep holding down the shapes option
        mousePressed=false;
      }
    }
  }
  
  //shapesSetting created for once the user selectes the "modes" option
  void shapesSetting()
  {
    //formatting is used with rectMode, fill for color, and rectangles to create 3 different options for the user click on, the square mode, circle mode, and crazy line mode
    rectMode(CENTER);
    fill(255,c2,0);
    rect((width/4),(height/4)+100,300,300);
    rect(width/2,(height/2)+200,300,300);
    rect((width/2)+(width/4),(height/4)+100,300,300);
    //if the user hovers above the square option the rectangle and text changes color
    if(mouseX<(width/4)+150&&mouseX>(width/4)-150&&mouseY>(height/4)-55&&mouseY<(height/4)+250&&trig==false&&circle==false&&square==false)
    {
      fill(random(255),c2,150);
      rect((width/4),(height/4)+100,300,300);
      //if the mouse is pressed on top of the square option the user has chosen the square mode
      if(mousePressed)
      {
        //a noise is played once the user clicks on the square option
         pressNoise.play();
         //square set to true to store the fact that the user chose the square option
        square=true;
        //String shape set to "squares" for individual options once the user chooses a shape
        shape= "squares";
      }
    }
    //if the user hovers above the crazy lines option the rectangle and text changes color
    if(mouseX<((width/4)+(width/2))+150&&mouseX>((width/4)+(width/2))-150&&mouseY>(height/4)-55&&mouseY<(height/4)+250&&trig==false&&circle==false&&square==false)
    {
      fill(random(255),c2,150);
      rect((width/2)+(width/4),(height/4)+100,300,300);
      //if the mouse is pressed on top of the crazy lines option the user has chosen the trig mode
      if(mousePressed)
      {
        //a noise is played once the user clicks on the square option
         pressNoise.play();
         //trig set to true to store the fact that the user chose the crazy lines option
        trig=true;
        //String shape set to "crazy lines" for individual options once the user chooses a shape
        shape= "crazy lines";
      }
    }
    //if the user hovers above the circle option the rectangle and text changes color
    if(mouseX<(width/2)+150&&mouseX>(width/2)-150&&mouseY>(height/2)-50&&mouseY<(height/2)+350&&trig==false&&circle==false&&square==false)
    {
      fill(random(255),c2,150);
      rect(width/2,(height/2)+200,300,300);
      //if the mouse is pressed on top of the circle option the user has chosen the circle mode
      if(mousePressed)
      {
        //a noise is played once the user clicks on the square option
         pressNoise.play();
         //trig set to true to store the fact that the user chose the circle option
        circle=true;
        //String shape set to "circles" for individual options once the user chooses a shape
        shape= "circles";
      }
    }
    //changes the color of the text and rectangles, and ellipses back to the original colors if the mouse hovered over them
    fill(c,c3,0);
    rect((width/4),(height/4)+100,200,200);
    textSize(35);
    text("crazy line mode.",(width/2)+(width/4)-140,(height/4)+100);
    ellipse(width/2,(height/2)+200,200,200);
    textSize(40);
    text("circle mode.", (width/2)-100,(height/2)+90);
    text("square mode.", (width/4)-120,(height/4)-10);
  }
  
  //shapesTitle created to individualise each "Modes" option
  void shapesTitle()
  {
    //Once the user has chosen the "modes" option, the title "CHOOSE A MODE" is shown at the top of the screen using text, and fill with random colors
    fill(c,c2,c2,3);
    rect(0,0,width,height);
    titleX+=random(-2,2);
    titleY+=random(-2,2);
    textSize(150);
    fill(random(255),c,c2);
    text("CHOOSE", titleX+100, titleY-50);
    fill(c,c3,0);
    text("CHOOSE", titleX+100, 150);
    fill(random(255),c,c2);
    text("A  MODE", titleX+(width/2)-100, titleY-50);
    fill(c,c3,0);
    text("A  MODE", titleX+(width/2)-100, 150);
  }
  
   //circleTitle created to show the circle mode title to the user
  void circleTitle()
  {
    //The title "HOW MANY CIRCLES?" is shown to the user at the top of the screen using text, and fill with random colors
    fill(c,c2,c2,3);
    rect(0,0,width,height);
    titleX+=random(-2,2);
    titleY+=random(-2,2);
    textSize(130);
    fill(random(255),c,c2);
    text("HOW MANY ", titleX+100, titleY-50);
    fill(c3,c,c2);
    text("HOW MANY", titleX+100, 150);
    fill(random(255),c,c2);
    text("CIRCLES?", titleX+(width/2)-50, titleY-50);
    fill(c3,c,c2);
    text("CIRCLES?", titleX+(width/2)-50, 150);
    
  }
  
  //triangleTitle created to show the crazylines mode title to the user
  void triangleTitle()
  {
    //The title "HOW MANY CRAZY LINES?" is shown to the user at the top of the screen using text, and fill with random colors
    fill(c,c2,c2,3);
    rect(0,0,width,height);
    titleX+=random(-2,2);
    titleY+=random(-2,2);
    textSize(130);
    fill(random(255),c,c2);
    text("HOW MANY ", titleX+100, titleY-50);
    fill(c3,c,c2);
    text("HOW MANY", titleX+100, 150);
    fill(random(255),c,c2);
    text("CRAZY LINES?", titleX+(width/2)-50, titleY-50);
    fill(c3,c,c2);
    text("CRAZY LINES?", titleX+(width/2)-50, 150);
    
  }
  
  //squareTitle created to show the square mode title to the user
  void squareTitle()
  {
    //The title "HOW MANY SQUARES?" is shown to the user at the top of the screen using text, and fill with random colors
    fill(c,c2,c2,3);
    rect(0,0,width,height);
    titleX+=random(-2,2);
    titleY+=random(-2,2);
    textSize(130);
    fill(random(255),c,c2);
    text("HOW MANY ", titleX+100, titleY-50);
    fill(c3,c,c2);
    text("HOW MANY ", titleX+100, 150);
    fill(random(255),c,c2);
    text("SQUARES?", titleX+(width/2)-50, titleY-50);
    fill(c3,c,c2);
    text("SQUARES?", titleX+(width/2)-50, 150);
  }
  
  //the slider is created to let the user edit how many shapes they want
  void slider()
  {
    //if i is equal to zero, this means that an amount has not been chosen for the mode the user has picked
    if(i==0)
    {
      //the amount of shapes is based off of the distance of the mouse compared to the left side of the slider
      int amount=int(dist(30,(height/4)+100,mouseX,(height/4)+100));
      //the amount is the constrained to certain parameters so the value is not negative or beyond the slider rectangle
      amount=constrain(amount,130,width-130);
      //once the amount is chosen, the amount is stored into numberOfShapes, which maps the distance to a new max and min between 500 and 15.
      int numberOfShapes=int(map(amount,130,width-130,15,500));
      //sliderX is constrained to parameters so the rectangle the user is dragging does not go off the slider or out of the screen
      sliderX=constrain(mouseX,130,width-130);
      //if the mouse is pressed inside of the slider area the user can change the amount of shapes
      if(mousePressed&&mouseX>30&&mouseX<width-30&&mouseY>(height/2)-122&&mouseY<(height/2)+200)
      {
        //amountChosen now holds the numberOfShapes so the value does not change as the user is moving the mouse without dragging the slider
        amountChosen=numberOfShapes;
      }
      //formatting to create the slider and rectangle within the slider
      rectMode(CORNER);
      fill(c3,c,c2);
      rect(30,(height/4)+150,width-60,(height/2)-230);
      //if the mouse is pressed inside the slider the user can then change where the rectangle is and drag it back and forth for a different amount of shapes
       if(mousePressed&&mouseX>30&&mouseX<width-30&&mouseY>(height/2)-122&&mouseY<(height/2)+200)
      {
        //a new rectangle is drawn to show that the slider is moving according to the mouse
        fill(c,c+100,c2-50);
        rect(sliderX-100,(height/4)+200,200,200);
        //squarePosition stores where the slider currently is to allow the user to move the mouse without moving the square
        squarePosition=sliderX-100;
      }
      //formatting to create the slider and rectangle within the slider
        fill(c,c+100,c2-50);
        rect(squarePosition,(height/4)+200,200,200);
        fill(c2+80,c3+80,c+80);
        //using text, the user is shown the amount of shapes they are going to have, using amountChosen and shape
        textSize(122);
        //shape is used to indicate which shape they are choosing the amount for("crazy lines", "squares", and "circles")
        //example for what would be shown as the user is changing the amountChosen with the slider: "200  crazy lines"
        text(amountChosen+" "+shape,0,(height/2)-200);
        fill(c2+30,c3+30,c+30);
        textSize(120);
        text(amountChosen+" "+shape,0,(height/2)-200);
        textSize(50);
        //"click and draw" shown to user to indicate to click and drag the square
        fill(c2+30,c3+30,c+30);
        text("click and drag",width-500,300);
        //Square created at the bottom of the screen for the user to click on when they are happpy with the amount of squares, circles, or crazy lines
        rectMode(CENTER);
        fill(c2+80,c3+80,c+80);
        rect((width/2)-5,950-5,600,200);
        fill(c2+30,c3+30,c+30);
        rect(width/2,950,600,200);
        fill(c2+80,c3+80,c+80);
        //text to indicate to the user to click the button when they are done
        text("click here when complete",(width/2)-300,950);
        //if the user clicks the completion button and the amountChosen is still zero, the user is instructed they cannot proceed until the value is greater than zero
        if(amountChosen==0&&mousePressed&&mouseX<(width/2)+300&&mouseX>(width/2)-300&&mouseY>950-100&&mouseY<950+100)
        {
          //noise is played when they click the button
          pressNoise.play();
          //text to tell the user that the amount of shapes needs to be greater than zero
          text("Amount needs to be greater than zero!!",0,height-300);
          fill(c2+80,c3+80,c+80);
          rect(width/2,950,600,200);
        }
        //if the user presses the completion button and the amount is greater than zero they can continue
        if(mousePressed&&mouseX<(width/2)+300&&mouseX>(width/2)-300&&mouseY>950-100&&mouseY<950+100&&amountChosen!=0)
        {
          //noise is played when the button is pressed
          pressNoise.play();
          //shapesChosen set to true to indicate that the user has finished choosing the shape
          shapesChosen=true;
        }
    }
  }
  
  //backgroundDesign created to generate the background for the user
  void backgroundDesign()
  {
    //i is less than amount chosen and increases every time, adding one shape along the way until the amount of shapes generated is the amount specified
      for(i=0;i<amountChosen;i++)
      {
        //stroke set to random final values for random outline generation
        stroke(final2+random(-155,150),final3+random(-150,150),final1+random(-150,150),random(1,1000));
        //if the user chose square, squares will be generated
        if(square==true)
        {
          //random color fills for the squares are generated
          fill(final2+random(-155,150),final3+random(-150,150),final1+random(-150,150),random(1,1000));
          //squares are generated in random positions slowly increasing their distance away from the top left for a cool effect
          rect(random(i*20),random(i*20),random(i*2),random(i*3));
        }
        //if the user chose circle, circles will be generated
        if(circle==true)
        {
          //random color fills for the circles are generated
          fill(final2+random(-155,150),final3+random(-150,150),final1+random(-150,150),random(1,1000));
          //circles are generated in random positions slowly increasing their distance away from the top left for a cool effect
          ellipse(random(i*20),random(i*20),random(i*2),random(i*3));
        }
        //if the user chose crazylines, crazylines will be generated
        if(trig==true)
        {
          //random color fills for the crazy lines are generated
          fill(final2+random(-155,150),final3+random(-150,150),final1+random(-150,150),random(1,1000));
          //triangles are generated in random positions slowly increasing their distance away from the top left for a cool effect
          //oddly enough the triangles ended up looking like lines, this looked cooler than actual triangles so the triangle option was changed the to crazy line mode
          triangle(20+i*10,random(height),20+i*10,random(height),20+i*10,random(height));
        }
      }
      //if the key is not being pressed, the user is instructed that a key should be pressed to be able to screenshot the background
      if(!keyPressed)
      {
        //text is shown to the user to instruct them to press any key to stop the random generation
        textSize(50);
        text("Press any key to stop generation and screenshot the background!",0,50);
        //backbutton called for the user be able to go back to the menu
        menu.backButton();
      }
  }
}
