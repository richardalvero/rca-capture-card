<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/richardalvero/rca-capture-card">
    <img src="images/gators.jpg" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">RCA Capture Card</h3>

  <p align="center">
    A detailed README for exploring all aspects of this capstone project.
    <br />
    <a href="https://github.com/richardalvero/rca-capture-card/tree/main/documentation"><strong>Explore the documentation »</strong></a>
    <br />
    <a href="https://github.com/richardalvero/rca-capture-card/tree/main/vhdl"><strong>Explore the VHDL code »</strong></a>
    <br />
    <br />
    <a href="#usage">View Demo</a>
    ·
    <a href="https://github.com/richardalvero/rca-capture-card/issues">Report Bug</a>
    ·
    <a href="https://github.com/richardalvero/rca-capture-card/issues">Request Feature</a>
  </p>
</p>



<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#project-architecture">Project Architecture</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
        <li><a href="#hardware">Hardware</a></li>
      </ul>
    </li>
    <li>
      <a href="#project-goals">Project Goals</a>
      <ul>
        <li><a href="#short-term">Short-Term</a></li>
        <li><a href="#stretch-goals">Stretch Goals</a></li>
      </ul>
    </li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#progress">Progress</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#authors">Authors</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>



<!-- ABOUT THE PROJECT -->
## Project Architecture

This section will give a brief description of the overall project architecture, from both a hardware and software perspective.

From a hardware perspective, this project intends to use an external component to decode the input RCA signal for processing within the FPGA board, where it will be further routed to a USB output for capturing purposes. The hardware will also pass the RCA signals through, to allow access to the original signals. So far, we have seen success in using the TVP5150AM1 Video Decoder for this purpose, and this additional part should allow us to convert the signal to a USB signal within the FPGA.

From a software perspective, this project required us to create code in VHDL that would be used to program the DE10 Lite to handle the inputs from the Video Decoder. This has been largely successful, and all relevant VHDL code used to program the FPGA is linked below:

[VHDL Directory](https://github.com/richardalvero/rca-capture-card/tree/main/vhdl)

This VHDL was synthesized into a programmable device using Quartus Prime 19.1, and programmed onto the DE10 Lite via a USB connection to the PC. For the purposes of the upcoming demo, the DE10 Lite is a sufficiently powerful FPGA that can be used to demonstrate the separate components interacting with each other. However, we are looking into other FPGAs that have built-in USB capabilities for our future implementations.

_For a more in-depth look at the architecture of our project, please see the [Pre-Alpha Build](https://github.com/richardalvero/rca-capture-card/blob/main/documentation/RCA%20Pre-Alpha%20Build%2011_01_22.pdf)_

### Built With

- Quartus Prime 19.1 Lite Edition (Programming)
- Notepad++ v8.4.6 (VHDL Coding)
- Visual Studio Code (VHDL)

### Hardware

- DE10 Lite FPGA (For now)
- TVP5150AM1 Ultra Low-Power Video Decoder


<!-- GETTING STARTED -->
## Project Goals

This section will describe the current goals that we wish to accomplish during the development of this capture card.

### Short-Term

For our short-term goal, as in by the end of this semester, we plan to have the basic workings of the capture card completed. This would include how to route the input signal through the video decoder, how to properly decode the signal to be transferred to the FPGA, and VHDL code that can take the input data and process it to an onboard output.

We have met a few of our short-term goals already, which included purchasing all relevant hardware that we would use for decoding and processing the RCA input. This includes the separate video decoder IC.


### Stretch Goals

Within the weekly meetings, we have determined a few of our stretch goals with the help of Carsten's input. First of all, we have moved HDMI to a small, but not zero possibility due to the difficulty of processing HDMI signals. These require a lot more outputs that a simple USB output, and outputting an RCA signal is as simple as recoding the decoded input signal.

Similarly, if we could synthesize the device onto a more compact surface using soldering, but in its current state, a breadboard has been sufficient in connecting all the relevant pins on our devices. How difficult this will be to construct is currently unknown, but further work on this product should give us an idea of how feasible this goal is.


<!-- USAGE EXAMPLES -->
## Usage

<!-- STILL NEEDS A BIT OF WORK -->

Our device is an open source alternative to running software on emulators, as it would allow users to use hardware they already have. It also offers a higher-quality alternative to recording the monitor externally.

_For a thorough explanation of our demo process, Please refer to the [Walkthrough](https://github.com/richardalvero/rca-capture-card/blob/main/experiments/TVP5150AM1PBS/Experiment2_walkthrough.md)_

<!-- ROADMAP -->
## Progress

This section will list the current progress that we have made toward our intended final product. We:

* Defined our short-term and stretch goals based on progress,
* Created a GitHub repository for storing all relevant code and documentation,
* Created an overall architecture design using VHDL,
* Ordered all necessary hardware for the basic function of the capture card, and
* Experimented with a small NTSC version RCA camera

We intend to keep making good progress with this product into the next semester, with more time to focus soley on this device.

See the [open issues](https://github.com/richardalvero/rca-capture-card/issues) for a list of proposed features (and known issues).

<!-- LICENSE -->
## License

Distributed under basic educational licenses. This 'product' is for a capstone project, so naturally, for educational purposes only.


<!-- Authors -->
## Authors

Richard Alvero    - [richardalvero](https://github.com/richardalvero) - richardalvero@ufl.edu

Dakota Cappel     - [dakota-cappel](https://github.com/dakota-cappel) - dakota.cappel@ufl.edu

Giovanni Cornejo  - [Giovanni Cornejo](https://github.com/Gearsman24) - cornejog@ufl.edu

Anthony Khmarin   - [Anthony Khmarin](https://github.com/MinceGit) - akhmarin@ufl.edu

Emily Namm        - [EmilyNamm](https://github.com/EmilyNamm) - enamm@ufl.edu


Project Link: [https://github.com/richardalvero/rca-capture-card](https://github.com/richardalvero/rca-capture-card)


<!-- ACKNOWLEDGEMENTS -->
## Acknowledgements

* [Jeremiah Blanchard](https://www.eng.ufl.edu/eed/faculty/name/jeremiah-blanchard/)
* [Carsten Thue-Bludworth](https://www.eng.ufl.edu/about/contact/college-directory/name/carsten-thue-bludworth/)
* [GitHub Pages](https://pages.github.com)

## Thank You

