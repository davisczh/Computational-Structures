**50.002 1D Project Report**

> Group members:

+-----------------------------------+-----------------------------------+
| > 1006084                         | > Patrick Phone Myat Mo           |
+===================================+===================================+
| > 1006118                         | > Ng Junhao Marcus                |
+-----------------------------------+-----------------------------------+
| > 1006105                         | > Dangi Smriti                    |
+-----------------------------------+-----------------------------------+
| > 1005936                         | > Chun Zhi Heng Davis             |
+-----------------------------------+-----------------------------------+
| > 1005984                         | > Ng Hau Yin Kendrick             |
+-----------------------------------+-----------------------------------+
| > 1006184                         | > Atul Parida                     |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *1*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**



+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *2*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> **Introduction**
>
> MistTreeBranch is our rendition of the classic game Lumberjack or
> Timberman where the user is situated at the base of a tree trunk and
> has to toggle between the left and right side of the trunk to avoid
> the tree branches and successfully chop down the tree. We have
> implemented a similar game with small changes including an added
> feature where the user is unable to see the branches closest to the
> base of the tree due to "mist". Thus the name MistTreeBranch, where
> the branches of importance are a mystery for a short period right
> before the time to avoid them. The mission is to protect the baby
> under the tree from the falling branches.
>
> Our prototype is made on a standard arcade game box with one 7 segment
> number display to display the player's score, followed by a 32x16 led
> matrix screen made using 2x(32x8) smaller matrix soldered together and
> placed into a 3D printed grid and diffused using tracing paper and
> acrylic. Lastly we have 2 main arcade game buttons, the green being
> the game button used to toggle the player position to the other side
> (left/right) and the red to reset the game to start state so that the
> player can restart the game.
>
> All electrical components and wiring, including the FPGA and the power
> supply are hidden behind the screen within the box.

![](vertopal_78de0b10680446c3a2ce6b910373d63d/media/image1.png){width="3.0611100174978128in"
height="4.093055555555556in"}

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *3*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> ![](vertopal_78de0b10680446c3a2ce6b910373d63d/media/image2.png){width="1.625in"
> height="3.875in"}
>
> **Game Design**
>
> Description of the Game
>
> Our game is an arcade style casual auto scrolling survival game.
>
> The goal is to help the lumberjack while he chops down the tree. The
> lumberjack will chop the tree on his own, so the player is to guide
> the lumberjack to avoid the branches, ordering him to move left and
> right to avoid the incoming branches.
>
> Player: There is only one player.
>
> Background: The player can view a tree (in the middle of the led
> array) with branches sticking out on either side. Near the bottom of
> the LED display is a physical visual obstruction (mist) that blocks
> the 2 rows of LEDs above the player's row to add a level of
> difficulty. Above that they will see one 7 seg LED display showing the
> current score.
>
> At the bottom there is a **toggle** button and a **reset** button.
> Each time the toggle button is pressed, the player will switch between
> being on the left and right. The "tree" moves down every second.

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *4*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> Procedure: The player will start by pressing the toggle button which
> will trigger the starting countdown of 3 seconds before the game
> begins and the branches start coming down. If there is a branch that
> approaches the cursor (the player's position on the LED) and the
> player doesn't move to the side without the branch, the game will be
> over.
>
> The longer the player manages to avoid any collisions with the branch,
> the higher the score they earn.
>
> When the player gets a game over, pressing the reset button will bring
> the player to the initial starting state.
>
> Ending Condition: The player collides with a branch/Game is completed
>
> User Manual
>
> After the start screen is on, the user presses the game button to
> start the game.
>
> The game button is used to toggle between two player position values
> of either 01100001 (LEFT BRANCH) or 11100001 (RIGHT BRANCH).
>
> Every second will increase the score by 1 and 'shift' the 'tree
> matrix' by 1 down and the game continues.
>
> A collision between the user's cursor and the branch will result in an
> end game state.
>
> If the user doesn't experience any collisions, they can keep going.
> The score will be displayed throughout the game.
>
> In the end game state, pressing the reset button will bring the user
> to the initial starting state when the start screen is on.
>
> Steps Taken when building the prototype
>
> 1\. Deciding the size of the screen and power supply needed.
>
> 2\. Deciding on the whole game and components required. E.g. Number of
> buttons, how to display score

+-----------------------------------+-----------------------------------+
| > 3.\                             | > CADing of the box with          |
| > 4.\                             | > dimensions of components in     |
| > 5.                              | > mind.                           |
|                                   | >                                 |
|                                   | > Testing individual components   |
|                                   | > and their functionality with    |
|                                   | > the fpga.                       |
|                                   | >                                 |
|                                   | > Assembling of the prototype     |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

> Design Issues + Problems Solved
>
> \- Due to the simplicity of the game, it fails to provide players a
> challenging experience and most can survive for a long time. We
> corrected this by adding a physical visual\
> obstruction near the bottom so that the player would have to remember
> where the branches were a few steps ago to avoid them. It proved
> incredibly effective.

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *5*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> \- We had issues with the box holding together with just glue. We had
> to adjust our CAD of the box and using a Fusion360 plugin, we made the
> finger joints pattern at the\
> intersection of each panel and could fit them together firmly with the
> help of some glue.- Our choice of implementing each "frame" of the
> display and having their own addresses in the ROM was so that we can
> simplify our FSM and RegFile. While that worked in our favor, we had
> problems generating the entire 200 frames x 15 branches in code. We
> solved that by generating the content of the ROM using a python
> script.
>
> Design Inspirations
>
> Our game was primarily inspired by the game Lumberjack, a classic
> arcade-style game where the player controls a lumberjack character
> tasked with chopping down trees.
>
> The objective of the game is to chop down the tree as fast as
> possible, while avoiding branches that can cause the player to lose
> the game.
>
> The straightforwardness of the gameplay relies on 2 inputs to indicate
> the side from which the player chops the tree. The fast-paced action
> and quick reactions required to chop as much as possible within the
> given time limit, along with the minimal graphical requirements, make
> it suitable for the FPGA format.
>
> Some improvements we made helped simplify the controls for the game.
> In the original game, the player required two different inputs to
> indicate which side they were chopping from and simultaneously chop.
> We converted this to a toggle button, which allowed the player to
> immediately switch between the sides, and a chop button with which the
> player could chop the tree.

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *6*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> Test Scenarios

+-----------------------+-----------------------+-----------------------+
| TEST SCENARIO         | ACTION                | RESULT                |
+=======================+=======================+=======================+
| > Game button pressed | > Display move:       | ![](vert              |
| > (at start of the    |                       | opal_78de0b10680446c3 |
| > game)               | ![](vert              | a2ce6b910373d63d/medi |
|                       | opal_78de0b10680446c3 | a/image4.png){width=" |
|                       | a2ce6b910373d63d/medi | 2.0194444444444444in" |
|                       | a/image3.png){width=" | height="              |
|                       | 2.0194433508311462in" | 2.363888888888889in"} |
|                       | height="1             |                       |
|                       | .6152777777777778in"} |                       |
+-----------------------+-----------------------+-----------------------+
| > Reset button        | > Display reset\      | ![](vert              |
| > pressed             | > FPGA reset          | opal_78de0b10680446c3 |
|                       |                       | a2ce6b910373d63d/medi |
|                       |                       | a/image5.png){width=" |
|                       |                       | 2.0194444444444444in" |
|                       |                       | height="              |
|                       |                       | 2.363888888888889in"} |
+-----------------------+-----------------------+-----------------------+

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *7*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

+-----------------------+-----------------------+-----------------------+
| > Game button pressed | > Player toggle:      | ![](vert              |
| > (during the game)   |                       | opal_78de0b10680446c3 |
|                       | ![](vert              | a2ce6b910373d63d/medi |
|                       | opal_78de0b10680446c3 | a/image7.png){width=" |
|                       | a2ce6b910373d63d/medi | 2.0194444444444444in" |
|                       | a/image6.png){width=" | height="2             |
|                       | 2.0194433508311462in" | .3652777777777776in"} |
|                       | height="1             |                       |
|                       | .4277777777777778in"} |                       |
+=======================+=======================+=======================+
| > Collision Check     | ![](vert              | > \[the branches that |
|                       | opal_78de0b10680446c3 | > are not being       |
|                       | a2ce6b910373d63d/medi | > displayed on the    |
|                       | a/image8.png){width=" | > actual game have    |
|                       | 2.0194433508311462in" | > been coloured blue  |
|                       | height="2             | > in this example for |
|                       | .9680555555555554in"} | > ease of             |
|                       |                       | > understanding\]     |
|                       |                       |                       |
|                       |                       | ![](vert              |
|                       |                       | opal_78de0b10680446c3 |
|                       |                       | a2ce6b910373d63d/medi |
|                       |                       | a/image9.png){width=" |
|                       |                       | 2.0194444444444444in" |
|                       |                       | height="4.625in"}     |
|                       |                       |                       |
|                       |                       | > NO Collision        |
+-----------------------+-----------------------+-----------------------+

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *8*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

+-----------------------+-----------------------+-----------------------+
|                       |                       | ![](verto             |
|                       |                       | pal_78de0b10680446c3a |
|                       |                       | 2ce6b910373d63d/media |
|                       |                       | /image10.png){width=" |
|                       |                       | 2.0194444444444444in" |
|                       |                       | height="4.625in"}     |
|                       |                       |                       |
|                       |                       | > Collision           |
+=======================+=======================+=======================+
+-----------------------+-----------------------+-----------------------+

> **Hardware Design**
>
> To develop a refined prototype, we constructed a compact console-like
> model that houses are LED matrix display, buttons, score 7 segment,
> our FPGA, 5V power supply, and wiring for all our components. We did
> this to prevent users being exposed to any wires and to make sure that
> all wired connections are secure. We CAD a simple design based on our
> components on Fusion 360 to ensure that we had enough space to store
> everything within the box. We laser cut our model on 5mm plywood. We
> had also created finger joints along all overlapping edges of the
> model such that the pieces would all fit together seamlessly and
> assist us in assembling the box easily. We used wood glue and super
> glue to reinforce the edges.
>
> Our LED matrix is housed in a 32x16 grid made using 3D printed PLA
> which we covered with tracing paper to ensure that the light would not
> be too bright or hard to see, ensuring smooth gameplay.

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *9*                             |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

![](vertopal_78de0b10680446c3a2ce6b910373d63d/media/image11.png){width="2.9277777777777776in"
height="3.1347222222222224in"}

3D CAD of game box

![](vertopal_78de0b10680446c3a2ce6b910373d63d/media/image12.png){width="3.6444433508311462in"
height="3.363888888888889in"}

DXF Files for Laser Cutting

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *10*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> **Electronic Design**
>
> Input/Output
>
> **[Inputs:]{.underline}**

+-----------------------------------+-----------------------------------+
| > **INPUT**                       |                                   |
+===================================+===================================+
| > Game (Move) Button              | > ![](vertopal_                   |
|                                   | 78de0b10680446c3a2ce6b910373d63d/ |
|                                   | media/image13.png){width="2.75in" |
|                                   | > height="1.9902777777777778in"}  |
+-----------------------------------+-----------------------------------+
| > Reset Button                    | > ![](vertopal_78de0b10680446     |
|                                   | c3a2ce6b910373d63d/media/image14. |
|                                   | png){width="2.6972222222222224in" |
|                                   | > height="2.022221128608924in"}   |
+-----------------------------------+-----------------------------------+

> **[Outputs:]{.underline}**
>
> LED matrix
>
> 7 segment display

+-----------------------------------------------------------------------+
| > **OUTPUT**                                                          |
+=======================================================================+
+-----------------------------------------------------------------------+

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *11*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

+-----------------------------------+-----------------------------------+
| > 7 segment display               | > ![](vertopal_78de0b10680446     |
|                                   | c3a2ce6b910373d63d/media/image15. |
|                                   | png){width="1.4166666666666667in" |
|                                   | > height="1.5208333333333333in"}  |
+===================================+===================================+
| > LED Matrix                      | >                                 |
|                                   | **2x**![](vertopal_78de0b10680446 |
|                                   | c3a2ce6b910373d63d/media/image16. |
|                                   | png){width="2.3430555555555554in" |
|                                   | > height="2.3430555555555554in"}  |
+-----------------------------------+-----------------------------------+

> **WS2812B LED Array**\
> The LED array takes serial data as its input. Data about which pixel
> should be what color is encoded and sent into the array over the
> course of several cycles.
>
> Each pixel accepts 24 bits of data to determine its color. As there
> are 512 pixels on the array, 512\* 24 bits need to be sent in to
> refresh each frame.
>
> Each pixels are assigned a 8bit address using a wrapper module, which
> encodes an x-y coordinate. 3b(y coordinate) +5b(x coordinate) before
> sending it to the writer module. When the writer is addressing a pixel
> of colour, it'll receive the 24bit colour assigned and output it to
> the led matrix. There is a dedicated LED writer in our datapath which
> accepts 24 bits of input at once.

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *12*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> Datapath

![](vertopal_78de0b10680446c3a2ce6b910373d63d/media/image17.png){width="6.5in"
height="4.448611111111111in"}

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *13*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> FSM
>
> ![](vertopal_78de0b10680446c3a2ce6b910373d63d/media/image18.png){width="4.698611111111111in"
> height="4.375in"}

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *14*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> **Budget**

+-------------+-------------+-------------+-------------+-------------+
| **          | **Cost**    | *           | **Total**   | **Source**  |
| Component** |             | *Quantity** |             |             |
+=============+=============+=============+=============+=============+
| >           | > \$0.50    | > 10        | > \$5.00    | Continental |
| Transistors |             |             |             | Electronics |
+-------------+-------------+-------------+-------------+-------------+
| > 7 Segment | > \$4.00    | > 2         | > \$8.00    |             |
| > Display   |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| > Arcade    | > \$4.50    | > 1         | > \$4.50    |             |
| > Button    |             |             |             |             |
| > 33MM /RED |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Arcade      | > \$5.00    | > 1         | > \$5.00    |             |
| Button      |             |             |             |             |
| 46MM/GREEN  |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| > PLA       | > \$19.90   | > 1         | > \$19.90   | > Shopee    |
| > Filament  |             |             |             |             |
+-------------+-------------+-------------+-------------+-------------+
| Total       |             |             | > \$42.40   |             |
+-------------+-------------+-------------+-------------+-------------+

> **Summary**
>
> The game MistTreeBranch is a version of Lumberjack with an added
> feature of a visual obstruction which increases the difficulty of the
> game and builds the users cognitive skills. The user is required to
> keep count of the time along with the branch state, like a metronome,
> to succeed in this game. The game is made possible using a mixture of
> hardware (LEDs, buttons, etc) and software (Lucid programming on
> FPGA).
>
> The game is designed to look like an old school arcade game with a
> tilted screen, flat countertop for the buttons and a score display up
> top.
>
> We hope you enjoyed it.
>
> **References**
>
> Driver code for WS2812B LED Matrix:\
> Code for 7 Segment display logic:

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *15*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> **Appendix**
>
> 1\. ALU Design and Tests
>
> Instruction Set
>
> We have designed an instruction set for the operators we wish to
> utilize in our game in the table below, organized by the opcode which
> relates to the operation followed by the module where it is programmed

  -----------------------------------------------------------------------
  **OPCODE**              **Operation Used**      **Module**
  ----------------------- ----------------------- -----------------------
  00 00X0                 ADDER                   adder16

  00 00X1                 SUBTRACT                

  00 0100                 MULTIPLY                multiplier16

  01 0000                 ZERO                    boolean16

  01 0001                 NOR                     

  01 0011                 NOT 'X'                 

  01 0101                 NOT 'Y'                 

  01 0110                 XOR                     

  01 0111                 NAND                    

  01 1000                 AND                     

  01 1001                 XNOR                    

  01 1010                 'X'                     

  01 1100                 'Y'                     

  01 1110                 OR                      

  01 1111                 ONE                     

  10 0000                 SHIFT LEFT              shifter16
  -----------------------------------------------------------------------

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *16*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

+-----------------------+-----------------------+-----------------------+
| 10 0001               | SHIFT RIGHT           |                       |
+=======================+=======================+=======================+
| 10 0011               | > SHIFT RIGHT\        |                       |
|                       | > ARITHMETIC          |                       |
+-----------------------+-----------------------+-----------------------+
| 11 001X               | CMPEQ                 | comparator16          |
+-----------------------+-----------------------+-----------------------+
| 11 010X               | CMPLT                 |                       |
+-----------------------+-----------------------+-----------------------+
| 11 011X               | CMPLE                 |                       |
+-----------------------+-----------------------+-----------------------+
| 11 101X               | MAXIMUM               |                       |
+-----------------------+-----------------------+-----------------------+
| 11 110X               | MINIMUM               |                       |
+-----------------------+-----------------------+-----------------------+

Fig. 1: Instruction set for ALU

> FPGA Diagram

![](vertopal_78de0b10680446c3a2ce6b910373d63d/media/image19.png){width="4.530555555555556in"
height="3.1972222222222224in"}

Fig. 2 Annotated FPGA Diagram

> The functionality of the FPGA is explained in the table below:

  -----------------------------------------------------------------------------
  **Inputs**        **Representation**   **Outputs**       **Representation**
  ----------------- -------------------- ----------------- --------------------
  16-bit X\[15:0\]  io_dip\[1\],         16-bit            io_led\[1:0\]
                    io_dip\[0\]          ALU\[15:0\]       

  -----------------------------------------------------------------------------

> *ISTD 50.002 Computation Structures* *17*

**50.002 1D Project Report**

+-----------------+-----------------+-----------------+-----------------+
| 16-bit          | io_dip\[1\],    | 1-bit Z         | i               |
| Y\[15:0\]       | io_dip\[0\]     |                 | o_led\[2\]\[0\] |
+=================+=================+=================+=================+
| > 6-bit OPCODE  | io_             | 1-bit V         | i               |
| > ALUFN\[5:0\]  | dip\[2\]\[5:0\] |                 | o_led\[2\]\[1\] |
+-----------------+-----------------+-----------------+-----------------+
|                 |                 | 1-bit N         | i               |
|                 |                 |                 | o_led\[2\]\[2\] |
+-----------------+-----------------+-----------------+-----------------+

> Auto Testing
>
> FSM will cycle through different test cases listed on the
> **auto_tester.luc** module.
>
> If the auto tester manages to go through all the test cases without
> any error, the 7-segments will display "0000". If at any point of time
> it fails, a letter "e" will be displayed.
>
> 1\. Press **io_button\[2\]** switching to automatic testing modes.
>
> 2\. In the **auto_tester.luc** module, the FSM will cycle through 18
> test cases listed below.
>
> 3\. If the auto tester manages to go through all the test cases
> without any error, the 7 segments will display "**0000**".

+-----------+-----------+-----------+-----------+-----------+-----------+
|           | **Op      | **X**     | **Y**     | *         | > *       |
|           | eration** |           |           | *OPCODE** | *Expected |
|           |           |           |           |           | >         |
|           |           |           |           |           |  Output** |
+===========+===========+===========+===========+===========+===========+
| > 0       | ADDER     | 16h0001   | 16hFFFF   | 6b000000  | 16h0000   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 1       |           | 16h7FFF   | 16h0001   | 6b000000  | 16h0000   |
+-----------+-----------+-----------+-----------+-----------+-----------+
|           |           | 16h0001   | 16h0002   | 6b000000  | 16h0003   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 2       | SUBTRAC T | 16h0003   | 16h0002   | 6b000001  | 16h0001   |
+-----------+-----------+-----------+-----------+-----------+-----------+

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *18*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

+-----------+-----------+-----------+-----------+-----------+-----------+
| > 3       |           | 16h0000   | 16h0001   | 6b000001  | 16hFFFF   |
+===========+===========+===========+===========+===========+===========+
|           |           | 16h7FFF   | 16h0000   | 6b000001  | 16h0000   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 4       | MULTIPLY  | 16h0003   | 16h0002   | 6b000100  | 16h0006   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 5       |           | 16hFFF2   | 16hFFF3   | 6b000100  | 16hFFF3   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 16      | XOR       | 16hffff   | 16hffff   | 6b010110  | 16h0000   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 18      | NAND      | 16h2af0   | 16hafe0   | 6b010111  | 16hd51f   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 20      | AND       | 16h0000   | 16h7fff   | 6b110101  | 16h0001   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 32      | > SHIFT\  | 16hffff   | 16h0008   | 6b100000  | 16hff00   |
|           | > LEFT    |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 36      | SHIFT\    | 16h3fff   | 16h0008   | 6b100011  | 16h003f   |
|           | RIGHT\    |           |           |           |           |
|           | ARITHMET  |           |           |           |           |
|           | IC        |           |           |           |           |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 38      | CMPEQ     | 16h0001   | 16h0001   | 6b110010  | 16hFFFF   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 40      | CMPLT     | 16h0000   | 16h7fff   | 6b110101  | 6b110101  |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 42      | CMPLE     | 16h7fff   | 16h0000   | 6b110111  | 16h0000   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 44      | MAXIMUM   | 16h0202   | 16hf007   | 6b111011  | 16hf007   |
+-----------+-----------+-----------+-----------+-----------+-----------+
| > 46      | MINIMUM   | 16hffff   | 16hffff   | 6b111101  | 16hffff   |
+-----------+-----------+-----------+-----------+-----------+-----------+

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *19*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

**50.002 1D Project Report**

> Manual Testing
>
> Procedure
>
> 1\. Press io_button\[2\] to switch between automatic and manual
> testing modes. 2. Enter the associated 6-bit OPCODE using
> io_dip\[2\]\[5:0\].
>
> 3\. When the 7-segment display shows "X" and "Y", enter the 16-bit
> values for X and Y by using {io_dip\[1\], io_dip\[0\]} respectively.
>
> 4\. Press io_button\[1\] to confirm the selected inputs of X and Y.
>
> 5\. When the 7-segment display shows "o", the output from the ALU will
> be displayed on {io_led\[1\], io_led\[0\]}.

+-----------------+-----------------+-----------------+-----------------+
| **Inputs**      | **R             | **Outputs**     | **R             |
|                 | epresentation** |                 | epresentation** |
+=================+=================+=================+=================+
| 16-bit          | io_dip\[1\],    | 16-bit          | io_led\[1:0\]   |
| X\[15:0\]       | io_dip\[0\]     | ALU\[15:0\]     |                 |
+-----------------+-----------------+-----------------+-----------------+
| 16-bit          | io_dip\[1\],    | 1-bit Z         | i               |
| Y\[15:0\]       | io_dip\[0\]     |                 | o_led\[2\]\[0\] |
+-----------------+-----------------+-----------------+-----------------+
| > 6-bit OPCODE  | io_             | 1-bit V         | i               |
| > ALUFN\[5:0\]  | dip\[2\]\[5:0\] |                 | o_led\[2\]\[1\] |
+-----------------+-----------------+-----------------+-----------------+
|                 |                 | 1-bit N         | i               |
|                 |                 |                 | o_led\[2\]\[2\] |
+-----------------+-----------------+-----------------+-----------------+

+-----------------------------------+-----------------------------------+
| 2\.                               | > Prototype code + Repo link      |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

+-----------------------+-----------------------+-----------------------+
| 3\.                   | > Project Management  |                       |
|                       | > Log: Team Tasks     |                       |
+=======================+=======================+=======================+
| *ISTD 50.002          |                       | > *20*                |
| Computation           |                       |                       |
| Structures*           |                       |                       |
+-----------------------+-----------------------+-----------------------+

**50.002 1D Project Report**

  -----------------------------------------------------------------------
  **Member**                          **Task**
  ----------------------------------- -----------------------------------
  Marcus                              Game logic

  Patrick                             Datapath and FSM

  Davis                               Lucid code and hardware

  Smriti                              Lucid code and game console box

  Kendrick                            Report

  Atul                                Report
  -----------------------------------------------------------------------

+-----------------------------------+-----------------------------------+
| 4\.                               | > Components' Specifications      |
+===================================+===================================+
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| > **Component**                   | > **Specification**               |
+===================================+===================================+
| > 7 Segment                       | > 4 DIGIT 0.56"                   |
+-----------------------------------+-----------------------------------+
| > LED                             | > 2x 32x8 WS2812B LED             |
+-----------------------------------+-----------------------------------+
| > PLA                             | > 1.75mm PLA Filament             |
+-----------------------------------+-----------------------------------+
| > Transistor                      | > 2n3904                          |
+-----------------------------------+-----------------------------------+

+-----------------------------------+-----------------------------------+
| *ISTD 50.002 Computation          | > *21*                            |
| Structures*                       |                                   |
+===================================+===================================+
+-----------------------------------+-----------------------------------+
