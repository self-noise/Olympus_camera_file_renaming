# Olympus_camera_file_renaming
A simple shell script to automate locating and renaming standard resolution RAW files created by Olympus and OM System cameras when used in high-res mode, to allow them to be easily imported to Adobe Lightroom.

**Background**

Many Olympus and OM System cameras, including the E-M1 mk III that I own, have high-resolution image modes where multiple images are combined to produce a single 'high resolution' image. 

For example, there is a tripod-based 80 MP mode, which I find works very well with certain subjects. The image sensor is shifted by half a pixel along each vertical, horizontal, and diagonal axis, and the resulting 8 images are combined in-camera to produce a RAW file 'equivalent' to 80 MP. It is 'equivalent' in the sense that every pixel site includes R+G+B pixel data, which avoids the need for Bayer array based demosaicing. 

Here is a nice overview of the technical background: https://www.philnortonphotographyblog.co.uk/techniques-high-resolution

**Files and extensions**

I up set my cameras to produce RAW files, which I develop using software like Adobe Lightroom and DXO Pure Raw. When using the Olympus or OM System high resolution modes, 3 files are created. For my E-M1 mk III, these are:

- XXXXX.ORF (the high resolution RAW file, consisting of 80 MP of data)
- XXXXX.JPG (a JPG rendering of the high resolution file, rendered at 50 MP)
- XXXXX.ORI (the first image of the multi-shot sequence that the camera captured, which is a straightforward RAW file with 20 MP of resolution)

where 'XXXXX' might be 'E9272074', depending on how you have your in-camera filnaming set up.

**The problem**

I use Adobe Lightroom to manage my photographic library, 
