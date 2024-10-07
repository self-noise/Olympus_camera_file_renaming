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

The handheld high resolution mode also produces 3 files, with a similar file extension convention, albeit with differences in resolution (the full RAW file is only 50 MP).

**The problem**

I use Adobe Lightroom to manage my photographic library, and it does not recognise the 'XXXXX.ORI' files as RAW files. 

Therefore, when importing from the SD card, only the 80 MP file (+ the 50 MP JPG, depending on how Lightroom is configured) are imported. 

This is a problem because sometimes I want the lower resolution 20 MP RAW file. For example, there may be areas of the 80 MP file that need to be replaced with clean, 'motion/artefact free' data as captured in the single 20 MP file. 

The purpose of this script is to very quickly find any XXXXX.ORI files on the SD card, and (sensibly) rename them prior to importing to Lightroom. This means both the 80 MP and 20 MP RAW files will be imported.

**The solution***

You could opt to manually locate and rename the standard resolution 20 MP files, but that seems awfully tedious.

Instead, I wrote a simple shell script that runs on MacOS via Terminal or whatever command line interface you are using, which does the above renaming, as follows:

- XXXXX.ORF --> left alone
- XXXXX.JPH --> left alone
- XXXXX.ORI --> XXXXX_20MP.ORF

The script file is located in this repository, and is named 'rename_em1_hires.sh'.

**How to use**

1. Download the file 'rename_em1_hires.sh' from this repository, and add it to your command line interface path. I do this by having a dedicated 'scripts' folder in my home directory, into which I place all the little odds and ends like this that help solve minor productivity issues. Adding this shell script to the command line path means it can be run from within any folder on your machine.
2. When you have loaded an SD card, but prior to opening Lightroon, fire up your command line interface and navigate to the folder on the SD card that contains images (e.g., /Volumes/Untitled/DCIM/100OLYMP).
3. Run the script, by typing 'rename_em1_hires.sh' and pressing 'Enter'. The script will rename the files, and report back to you on any filenames it has changed.
4. Fire up Lightroom and import images as usual. The 20 MP files will be easily identified via filename and/or metadata filtering.
