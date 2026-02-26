# flutedglasseffectmetal

A SwiftUI + Metal implementation of a fluted glass distortion effect. Vertical sine-wave displacement makes an image look like it's being viewed through a ribbed or reeded glass panel.

## What it does

A Metal `layerEffect` shader (`fractalGlassEffect`) displaces each pixel horizontally using a sine wave based on its vertical position. Two sliders control the phase and amplitude of the wave in real time, letting you dial in anything from subtle diffusion to heavy prismatic banding.

## Features

- Fluted/reeded glass illusion via sinusoidal horizontal displacement
- Real-time **progress** (phase shift) and **amplitude** sliders
- Single-file Metal shader — fewer than 20 lines of GLSL-style MSL
- Applied as a SwiftUI `layerEffect` with no additional rendering pipeline

## Tech Stack

- **SwiftUI** — `layerEffect`, sliders, `ZStack` layout
- **Metal** — `stitchable` fragment shader (`fractalGlassEffect`)

## Requirements

- Xcode 15+
- iOS 17+ / macOS 14+ (requires SwiftUI Shader API)

## How to Run

1. Add `ContentView.swift` and `flutedglass.metal` to an Xcode project.
2. Add an image named `curry` to your asset catalog (or swap in any image name).
3. Set `ContentView()` as the root view and run.
4. Drag the **p** and **a** sliders to adjust the phase and amplitude of the fluted glass effect.
