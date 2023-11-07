# Stonewall: colourful, accurate pride flags colour palette for queer gradients

You can use the colour palette with _gradients_ for maximum results! 

For example the following code
```typ
#import "@preview/stonewall:0.1.0": flags

#set page(width: 200pt, height: auto, margin: 0pt)
#set text(fill: black, size: 12pt)
#set text(top-edge: "bounds", bottom-edge: "bounds")


#stack(
  spacing: 3pt,
  ..flags.map(((name, preset)) => block(
    width: 100%,
    height: 20pt,
    fill: gradient.linear(..preset),
    align(center + horizon, smallcaps(name)),
  ))
)
```
Displays a stack of all flags with the name on it.

Another example here is all the flags with the name associated with their name, thanks @frozolotl on discord for the code so the name are more readable.

![flag](flags.png)