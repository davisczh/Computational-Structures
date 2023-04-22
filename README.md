**50.002 1D Project Report**

# Team 4

# **Mist Tree Branch**

**Team Number** : 4

### Group members:

##
| **Member** | **STUDENT_ID** |
| --- | --- |
| Ng Junhao Marcus | 1006118 |
| Patrick Phone Myat Mo | 1006084 |
| Chun Zhi Heng Davis | 1005936 |
| Smriti | 1006105 |
| Kendrick | 1005984 |
| Atul | 1006184 |
##


## **Introduction**

MistTreeBranch is our rendition of the classic game Lumberjack or Timberman where the user is situated at the base of a tree trunk and has to toggle between the left and right side of the trunk to avoid the tree branches and successfully chop down the tree. We have implemented a similar game with small changes including an added feature where the user is unable to see the branches closest to the base of the tree due to "mist". Thus the name MistTreeBranch, where the branches of importance are a mystery for a short period right before the time to avoid them. The mission is to protect the baby under the tree from the falling branches.

Our prototype is made on a standard arcade game box with one 7 segment number display to display the player's score, followed by a 32x16 led matrix screen made using 2x(32x8) smaller matrix soldered together and placed into a 3D printed grid and diffused using tracing paper and acrylic. Lastly we have 2 main arcade game buttons, the green being the game button used to toggle the player position to the other side (left/right) and the red to reset the game to start state so that the player can restart the game.

All electrical components and wiring, including the FPGA and the power supply are hidden behind the screen within the box.

![](\Users\dczqd\OneDrive - Singapore University of Technology and Design\Pictures\Saved Pictures\Picture1.png "OURTHING")

![](\Users\dczqd\OneDrive - Singapore University of Technology and Design\Pictures\Saved Pictures\Picture2.png "ITSPLAYING")

## **Game Design**

## Description of the Game

Our game is an arcade style casual auto scrolling survival game.

The goal is to help the lumberjack while he chops down the tree. The lumberjack will chop the tree on his own, so the player is to guide the lumberjack to avoid the branches, ordering him to move left and right to avoid the incoming branches.

Player: There is only one player.

Background: The player can view a tree (in the middle of the led array) with branches sticking out on either side. Near the bottom of the LED display is a physical visual obstruction (mist) that blocks the 2 rows of LEDs above the player's row to add a level of difficulty. Above that they will see one 7 seg LED display showing the current score.

At the bottom there is a **toggle** button and a **reset** button. Each time the toggle button is pressed, the player will switch between being on the left and right. The "tree" moves down every second.

Procedure: The player will start by pressing the toggle button which will trigger the starting countdown of 3 seconds before the game begins and the branches start coming down.

If there is a branch that approaches the cursor (the player's position on the LED) and the player doesn't move to the side without the branch, the game will be over.

The longer the player manages to avoid any collisions with the branch, the higher the score they earn.

When the player gets a game over, pressing the reset button will bring the player to the initial starting state.

Ending Condition: The player collides with a branch/Game is completed

## User Manual

After the start screen is on, the user presses the game button to start the game.

The game button is used to toggle between two player position values of either 01100001 (LEFT BRANCH) or 11100001 (RIGHT BRANCH).

Every second will increase the score by 1 and 'shift' the 'tree matrix' by 1 down and the game continues.

A collision between the user's cursor and the branch will result in an end game state.

If the user doesn't experience any collisions, they can keep going. The score will be displayed throughout the game.

In the end game state, pressing the reset button will bring the user to the initial starting state when the start screen is on.

## Steps Taken when building the prototype

1. Deciding the size of the screen and power supply needed.
2. Deciding on the whole game and components required. E.g. Number of buttons, how to display score
3. CADing of the box with dimensions of components in mind.
4. Testing individual components and their functionality with the fpga.
5. Assembling of the prototype

## Design Issues + Problems Solved

- Due to the simplicity of the game, it fails to provide players a challenging experience and most can survive for a long time. We corrected this by adding a physical visual obstruction near the bottom so that the player would have to remember where the branches were a few steps ago to avoid them. It proved incredibly effective.

- We had issues with the box holding together with just glue. We had to adjust our CAD of the box and using a Fusion360 plugin, we made the finger joints pattern at the intersection of each panel and could fit them together firmly with the help of some glue.
- Our choice of implementing each "frame" of the display and having their own addresses in the ROM was so that we can simplify our FSM and RegFile. While that worked in our favor, we had problems generating the entire 200 frames x 15 branches in code. We solved that by generating the content of the ROM using a python script.

## Design Inspirations

Our game was primarily inspired by the game Lumberjack, a classic arcade-style game where the player controls a lumberjack character tasked with chopping down trees.

The objective of the game is to chop down the tree as fast as possible, while avoiding branches that can cause the player to lose the game.

The straightforwardness of the gameplay relies on 2 inputs to indicate the side from which the player chops the tree. The fast-paced action and quick reactions required to chop as much as possible within the given time limit, along with the minimal graphical requirements, make it suitable for the FPGA format.

Some improvements we made helped simplify the controls for the game. In the original game, the player required two different inputs to indicate which side they were chopping from and simultaneously chop. We converted this to a toggle button, which allowed the player to immediately switch between the sides, and a chop button with which the player could chop the tree.

## Test Scenarios

| TEST SCENARIO | ACTION | RESULT |
| --- | --- | --- |
| Game button pressed (at start of the game) | Display move: ![](RackMultipart20230422-1-xzyv25_html_6eeca67d336f7f6e.png) | ![](RackMultipart20230422-1-xzyv25_html_a94db3ba658908fd.png) |
| Reset button pressed | Display reset
FPGA reset | ![](RackMultipart20230422-1-xzyv25_html_4fe441d9b64b0a16.png) |
| Game button pressed (during the game) | Player toggle: ![](RackMultipart20230422-1-xzyv25_html_27e579e81ba8687d.png) | ![](RackMultipart20230422-1-xzyv25_html_610e041076b632b4.png) |
| Collision Check | ![](RackMultipart20230422-1-xzyv25_html_3beecec1a20a8224.png) | [the branches that are not being displayed on the actual game have been coloured blue in this example for ease of understanding] ![](RackMultipart20230422-1-xzyv25_html_ca63ed4cd7812684.png)NO Collision |
| ![](RackMultipart20230422-1-xzyv25_html_315aa80054e82cf1.png)Collision |

## **Hardware Design**

To develop a refined prototype, we constructed a compact console-like model that houses are LED matrix display, buttons, score 7 segment, our FPGA, 5V power supply, and wiring for all our components. We did this to prevent users being exposed to any wires and to make sure that all wired connections are secure. We CAD a simple design based on our components on Fusion 360 to ensure that we had enough space to store everything within the box. We laser cut our model on 5mm plywood. We had also created finger joints along all overlapping edges of the model such that the pieces would all fit together seamlessly and assist us in assembling the box easily. We used wood glue and super glue to reinforce the edges.

Our LED matrix is housed in a 32x16 grid made using 3D printed PLA which we covered with tracing paper to ensure that the light would not be too bright or hard to see, ensuring smooth gameplay.

| ![](RackMultipart20230422-1-xzyv25_html_41d288ac8a281a0b.png) |
| --- |
| 3D CAD of game box |
| ![](RackMultipart20230422-1-xzyv25_html_1b17ab261e8c17cb.png) |
| DXF Files for Laser Cutting |

## **Electronic Design**

## Input/Output

**Inputs:**

| **INPUT** |
| --- |
| Game (Move) Button | ![](RackMultipart20230422-1-xzyv25_html_23ae12229027692.png) |
| Reset Button | ![](RackMultipart20230422-1-xzyv25_html_f0215260a56c5651.png) |

**Outputs:**

LED matrix

7 segment display

| **OUTPUT** |
| --- |
| 7 segment display | ![](RackMultipart20230422-1-xzyv25_html_675af19b5bacf5b3.png) |
| LED Matrix | **2x**![](RackMultipart20230422-1-xzyv25_html_f65792e1b0e8743f.png) |

**WS2812B LED Array**

The LED array takes serial data as its input. Data about which pixel should be what color is

encoded and sent into the array over the course of several cycles.

Each pixel accepts 24 bits of data to determine its color. As there are 512 pixels on the array,

512\* 24 bits need to be sent in to refresh each frame.

Each pixels are assigned a 8bit address using a wrapper module, which encodes an x-y coordinate. 3b(y coordinate) +5b(x coordinate) before sending it to the writer module. When the writer is addressing a pixel of colour, it'll receive the 24bit colour assigned and output it to the led matrix. There is a dedicated LED writer in our datapath which accepts 24 bits of input at once.

## Datapath

![](RackMultipart20230422-1-xzyv25_html_579c697419f1009f.png)

## FSM

![](RackMultipart20230422-1-xzyv25_html_3123aeb231973ca6.png)

## **Budget**

| **Component** | **Cost** | **Quantity** | **Total** | **Source** |
| --- | --- | --- | --- | --- |
| Transistors | $0.50 | 10 | $5.00 | Continental Electronics
 |
| 7 Segment Display | $4.00 | 2 | $8.00 |
| Arcade Button 33MM /RED | $4.50 | 1 | $4.50 |
| Arcade Button 46MM/GREEN | $5.00 | 1 | $5.00 |
| PLA Filament | $19.90 | 1 | $19.90 | Shopee |
| Total | $42.40 |
 |

## **Summary**

The game MistTreeBranch is a version of Lumberjack with an added feature of a visual obstruction which increases the difficulty of the game and builds the users cognitive skills. The user is required to keep count of the time along with the branch state, like a metronome, to succeed in this game. The game is made possible using a mixture of hardware (LEDs, buttons, etc) and software (Lucid programming on FPGA).

The game is designed to look like an old school arcade game with a tilted screen, flat countertop for the buttons and a score display up top.

We hope you enjoyed it.

## **References**

Driver code for WS2812B LED Matrix: [https://github.com/natalieagus/ws2812b](https://github.com/natalieagus/ws2812b)

Code for 7 Segment display logic: [https://github.com/natalieagus/SampleAlchitryProjects](https://github.com/natalieagus/SampleAlchitryProjects)

## **Appendix**

1.
## ALU Design and Tests

## Instruction Set

We have designed an instruction set for the operators we wish to utilize in our game in the table below, organized by the opcode which relates to the operation followed by the module where it is programmed

Fig. 1: Instruction set for ALU

## FPGA Diagram

![](RackMultipart20230422-1-xzyv25_html_bf03cfbb3a8b060.png)

Fig. 2 Annotated FPGA Diagram

The functionality of the FPGA is explained in the table below:

## Auto Testing

FSM will cycle through different test cases listed on the **auto\_tester.luc** module.

If the auto tester manages to go through all the test cases without any error, the 7-segments will display "0000". If at any point of time it fails, a letter "e" will be displayed.

1. Press **io\_button[2]** switching to automatic testing modes.
2. In the **auto\_tester.luc** module, the FSM will cycle through 18 test cases listed below.
3. If the auto tester manages to go through all the test cases without any error, the 7 segments will display " **0000**".

## Manual Testing

### Procedure

1. Press io\_button[2] to switch between automatic and manual testing modes.
2. Enter the associated 6-bit OPCODE using io\_dip[2][5:0].
3. When the 7-segment display shows "X" and "Y", enter the 16-bit values for X and Y by using {io\_dip[1], io\_dip[0]} respectively.
4. Press io\_button[1] to confirm the selected inputs of X and Y.
5. When the 7-segment display shows "o", the output from the ALU will be displayed on {io\_led[1], io\_led[0]}.

1.
## Prototype code + Repo link

[https://github.com/PatrickkMo/SUTD-CS-1D.git](https://github.com/PatrickkMo/SUTD-CS-1D.git)

1.
## Project Management Log: Team Tasks

| **Member** | **Task** |
| --- | --- |
| Marcus | Game logic |
| Patrick | Datapath and FSM |
| Davis | Lucid code and hardware |
| Smriti | Lucid code and game console box |
| Kendrick | Report |
| Atul | Report |

1.
## Components' Specifications

| **Component** | **Specification** |
| --- | --- |
| 7 Segment | 4 DIGIT 0.56" |
| LED | 2x 32x8 WS2812B LED |
| PLA | 1.75mm PLA Filament |
| Transistor | 2n3904 |

_ISTD 50.002 Computation Structures 12_

