# Wildtrace

An open-source, LLM-assisted quadraphonic spatial audio plugin suite built with Csound and Cabbage, utilizing complex system algorithms for immersive panning.

## Environment & Build Requirements

To successfully compile, run, or modify the `.csd` source files in this suite, you **must** use the following specific software versions to ensure compatibility and avoid GUI/DSP rendering issues:

* **DSP Engine:** [Csound 6.18](https://csound.com/) (or compatible 6.x versions)
* **Frontend Platform:** [Cabbage 2.9.0](https://cabbageaudio.com/)

### Quick Start & Compilation

1. Clone or download this repository to your local machine.
2. Launch **Cabbage 2.9.0**.
3. Open any `.csd` file from the `wildtrace beta` directory (e.g., `Beta-Orbita.csd`).
4. In Cabbage, click `File -> Export Plugin` to compile the source code into a native audio plugin format (**AU / VST / VST3**) compatible with your Digital Audio Workstation (DAW) such as Ableton Live.
5. Manually place the corresponding GUI texture/image asset files into the compiled plugin's package contents ("Show Package Contents" on macOS) one by one to ensure the custom asset skins render correctly.
