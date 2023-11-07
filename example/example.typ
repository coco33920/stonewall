#import "../stonewall.typ": flags

#set page(width: 200pt, height: auto, margin: 0pt)
#set text(font: "Fira Sans", size: 12pt, weight: 500)
#set text(top-edge: "bounds", bottom-edge: "bounds")

#stack(
  spacing: 3pt,
  ..flags.map(((name, preset)) => block(
    width: 100%,
    height: 20pt,
    fill: gradient.linear(..preset),
    text(
      fill: gradient.linear(
        relative: "parent",
        ..preset.map(col => {
          let comp = oklab(col).components(false)
          oklab(if comp.at(0) > 50% { 0% } else { 100% }, comp.at(1), comp.at(2))
        }),
      )
        .sharp(preset.len()),
      align(center + horizon, smallcaps(name)),
    ),
  ))
)