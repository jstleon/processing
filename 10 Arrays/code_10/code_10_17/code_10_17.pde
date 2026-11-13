PImage[] imgs = new PImage[32];
println(imgs.length);  // Prints "32"

imgs = (PImage[]) shorten(imgs);
println(imgs.length);  // Prints "31"

imgs = (PImage[]) shorten(imgs);
println(imgs.length);  // Prints "30"

imgs = (PImage[]) shorten(imgs);
println(imgs.length);  // Prints "30"
