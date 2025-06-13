# Source Engine PBR Textures

PBR textures for Source Engine game assets which don't already have them.

## Colour channels

All MRAO textures are in the glTF format:

- R - Ambient Occlusion
- G - Roughness
- B - Metalness

Emission maps store the colour of the emission at a point, with black being no emission.

## Usage

To make it easy to match these images up with the corresponding Source Engine asset, the following conventions are used:
- All textures are placed in the same folder as the corresponding diffuse/albedo texture
- All textures are prefixed with the diffuse/albedo texture name
- MRAO textures are suffixed with `_mrao`
- Emission textures are suffixed with `_emission`

## Showcase

**With MRAO Textures**

![With MRAO](https://github.com/TAServers/source-pbr/blob/master/Screenshots/example%20with.png?raw=true)  

**Without MRAO Textures**

![Without MRAO](https://github.com/TAServers/source-pbr/blob/master/Screenshots/example%20without.png?raw=true)  
