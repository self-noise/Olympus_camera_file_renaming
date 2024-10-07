# Olympus_camera_file_renaming
A simple shell script to automate locating and renaming standard resoluytion RAW files created by Olympus and OM System cameras when used in high-res mode, to allow them to be easily imported to Adobe Lightroom.

Background
Many Olympus and OM System cameras, including the E-M1 mk III that I own, have high-resolution image modes where multiple images are combined to produce a single 'high resolution' image. 

For example, there is a tripod-based 80 MP mode, which I find works very well with certain subjects. The image sensor is shifted by half a pixel along each vertical, horizontal, and diagonal axis, and the resulting 8 images are combined in-camera to produce a RAW file 'equivalent' to 80 MP. It is 'equivalent' in the sense that every pixel site includes R+G+B pixel data, which avoids the need for Bayer array based demosaicing. 

Here is a nice overview of the technical background: https://www.philnortonphotographyblog.co.uk/techniques-high-resolution
