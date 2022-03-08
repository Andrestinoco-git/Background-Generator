//Friday, June 15,2018     ANDRES TINOCO

//THE BACKGROUND GENERATOR
/*
This program allows a user to design and generate a background based upon user input.
The user can choose between 3 options, the "Modes" option, "Design" option, and "Random" option.
In the "Modes" option the user has the choice of selecting 3 different modes, the square, circle, or crazy lines mode.
Each mode allows the user to choose a certain amount of crazy lines, squares, or circles, to be generated in their background.
Once they are done, a random background is generated with a certain amount of circles, squares, or crazy lines, once the user 
presses any key, the random backgrounds stop generating and the user can screenshot the result. Also, the "Design" option allows
the user to select 1 of 4 different design styles to draw their own background using the mouse. Once the user is satisfied with the result they can
press any key to stop generation and screenshot the background. The final option, "Random", randomly generates a certain amount of shapes
in random placements until the user presses any key to screenshot the background.
*/

//import processing.sound library to allow for sound to be played
import processing.sound.*;
//create menu for the generation of the beginning main menu the user will see
Menu menu;
//create the drawOption,randomOption, and shapesOption for individual menus and background generation
Draw drawOption;
Random randomOption;
Shapes shapesOption;
//xRect, yRect, x2Rect, y2Rect are all variables for the menu class to position menu items and rectangles properly
float xRect=0;
float yRect=height/2+200;
float x2Rect=width;
float y2Rect=height;
//titleX, titleY used to position titles for each menu, instructing user on what to do
float titleX=0;
float titleY=200;
//color c, c2, c3 created to randomize background generator palatte, this is done so that the colours used in each menu do not seem random and are more related to each other
color c=int(random(255));
color c2=int(random(255));
color c3=int(random(255));
//color final1, final2, and final3 created to randomize colours for final background generation so the background is not related to previous menus seen
color final1=int(random(255));
color final2=int(random(255));
color final3=int(random(255));

//shapes, draw, and random boolean variables created to check keep track of what selections the user has made
//if the user is in the "Modes" menu, shapes is true.(it is named shapes because this option used to be called "Shapes" rather than "Modes")
boolean shapes=false;
//if the user is in the "Design" menu, draw is true.(it is named draw because this option used to be called "Draw" rather than "Design")
boolean draw=false;
//if the user is in the "Random" menu, random is true.
boolean random=false;

//square, trig, and circle boolean variables created to also check what selections the user has made
//if the user chose the square mode, square becomes true
boolean square=false;
//if the user chose the "Crazy Lines" mode, trig is true.(It is named trig because this used to be the triangle option but was later changed to "Crazy Lines").
boolean trig=false;
//if the user chose the circle mode, circle is true.
boolean circle=false;
//Boolean shapesChosen variable created to keep track of whether has chosen the shape/mode they would like to use
boolean shapesChosen=false;
//boolean mode1, mode2, mode3, mode4 variables created for the user to choose design styles 1-5 in the design option
//if mode1 is true, the user pressed the number 1 key and the first design style is shown
boolean mode1=false;
//if mode2 is true, the user pressed the number 2 key and the second design style is shown
boolean mode2=false;
//if mode3 is true, the user pressed the number 3 key and the third design style is shown
boolean mode3=false;
//if mode4 is true, the user pressed the number 4 key and the fourth design style is shown
boolean mode4=false;
//if mode5 is true, the user pressed the number 5 key and they would like to go back to the main menu
boolean mode5=true;
//boolean back keeps track of the backButton and if the user has pressed it. (used in backButton method)
boolean back=false;

//int i created to count how many shapes have been drawn
int i=0;
//float sliderX created to move slider and edit amount of shapes the user wants
float sliderX=mouseX;
//amountChosen created to store the amount fo shapes the user would like in their background
int amountChosen=0;
//squarePosition stores where the sliders position is
float squarePosition;
//String shape stores the word that user chose for the mode title
//if the user chose the square mode shape= "squares"
//if the user chose circle mode shape="circles"
//if the user chose the crazy lines mode shape="crazy lines"
String shape;
//SoundFile file created for the program to be able to play background music
SoundFile file;
//SoundFile pressNoise created to play the noise the user hears when they press on an option
SoundFile pressNoise;

void setup()
{
  //fullScreen used to make the program window full screen
  fullScreen();
  //background set to white
  background(255);
  //new Menu created for main menu generation
  menu=new Menu();
  //new Draw, Shapes, and Random created for individual background generation branches
  drawOption=new Draw();
  shapesOption=new Shapes();
  randomOption=new Random();
  //file will store the soundFile jazz.mp3 to play background music
  file=new SoundFile(this,"jazz.mp3");
  //file.play() to play the background music
  file.play();
  //amplify music by 0.75
  file.amp(0.75);
  //pressNoise stores the noise the user hears when they press an option
  pressNoise=new SoundFile(this,"buttonSound.wav");
}

void draw()
{
  //frameRate set to 60 frames per second
  frameRate(60);
  //menu bottomOptions called to create the bottom options for the user to see
  menu.bottomOptions();
  //title called to show title
  menu.title();
  //drawOption, shapesOptionm, and randomOption called for user to click on each option
  drawOption.drawOption();
  shapesOption.shapesOption();
  randomOption.randomOption();
  //Constrain the sliderX value so that the slider does not go off the slider rectangle and stays on the screen
  constrain(sliderX,130,width-130);
  
  //once the user has chosen an option
  //if the user has chosen the "Modes" option, which is then set to shapes=true
  //this if statement runs
  if(shapes==true&&random==false&&draw==false)
  {
    //background is set to random color using c3, and c2
    background(c3,c3,c2,1);
    //the shapesSetting is called to go into depth on which shapes and how many the user would like for their background
    shapesOption.shapesSetting();
    //shapesTitle is called to show the title of the shapesOption, directing the user to choose a mode
    shapesOption.shapesTitle();
    //backButton is called for the user to use to go back to main menu
    menu.backButton();
    //if the user chose the square option
    if(square==true)
    {
      //background is set to random color using c2,c3,c
      background(c2,c3,c,1);
      //the squareTitle is called to ask the user how many squares they would like in their background
      shapesOption.squareTitle();
      //slider called to let the user choose how many shapes they want
      shapesOption.slider();
      //backButton is called for the user to use to go back to main menu
      menu.backButton();
    }
    //if the user chose the crazy lines mode
    if(trig==true)
    {
      //background is set to random color using c2,c3,c
      background(c2,c3,c,1);
      //the triangleTitle is called to ask the user how many crazy lines they would like in their background
      shapesOption.triangleTitle();
      //slider called to let the user choose how many shapes they want
      shapesOption.slider();
      //backButton is called for the user to use to go back to main menu
      menu.backButton();
    }
    //if the user chose the circles mode
    if(circle==true)
    {
      //background is set to random color using c2,c3,c
      background(c2,c3,c,1);
       //the circleTitle is called to ask the user how many circles they would like in their background
      shapesOption.circleTitle();
      //slider called to let the user choose how many shapes they want
      shapesOption.slider();
      //backButton is called for the user to use to go back to main menu
      menu.backButton();
    }
    //once the user has chosen one of the modes this will run and generate a background
    if(shapesChosen==true)
    {
      //background color is set using the final1, final2, and final3 values
        background(final1,final2,final3);
        //if the user presses any key the program stops looping letting the user screenshot the background
        if(keyPressed)
        {
          //noLoop used to stop looping
          noLoop();
        }
        //backgroundDesign called to generate background using the specified shape and amount
        shapesOption.backgroundDesign();
    }
  }
  
  //if the user has chosen the "Design" option, which is then set to draw=true
  //this if statement runs
  if(draw==true&&random==false&&shapes==false)//need to add more things so it doesnt change background 
  {
    //background set using c3, and c2
    background(c3,c3,c2,10);
    //drawing called to generate designs and let user draw using the mouse to design their own background
    drawOption.drawing();
    //if any key is pressed this will run
    if(keyPressed)
    {
      //if any key pressed other than 1,2,3,4 and 5, the program will stop looping letting the user screenshot the background
      if(key!='1'&&key!='2'&&key!='3'&&key!='4'&&key!='5'&&mode5==false)
      {
        //noLoop used to stop looping
        noLoop();
      }
    }
    //if mode5 is false, this means that the user is using one of the four designs and a message is shown
    else if(mode5==false)
    {
      //text size set to 50 for readability
      textSize(50);
      //text color set using c,c2,c3
      fill(c,c2,c3);
      //the message is shown to instruct the user to press any key to stop the background generation and to screenshot their background
      text("Press any key to stop generation and screenshot the background!",0,50);
    }
  }
  
  //if the user has chosen the "Random" option, which is then set to random=true
  //this if statement runs
  if(draw==false&&random==true&&shapes==false)
  {
    //background set to random color using c3, and c2
    background(c3,c3,c2,10);
    //randomBackground called to generate random background for user
    randomOption.randomBackground();
    //if any key is pressed the program stops looping to let user screenshot the background
    if(keyPressed)
    {
      //no loop used to stop looping
      noLoop();
    }
    //if the user is not pressing any keys a message is displayed
    else
    {
      textSize(50);
      fill(c,c2,c3);
      //text used to instruct user to press any key and screenshot the background
      text("Press any key to stop generation and screenshot the background!",0,50);
      //backButton called to let user go back to main menu
      menu.backButton();
    }
  }
}
