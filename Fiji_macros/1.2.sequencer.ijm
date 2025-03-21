close("*");

sequence_directory = getDirectory("Select the dirctroy with sequences");
directoryList_sequence = getFileList(sequence_directory);

for (i = 0; i < directoryList_sequence.length; i++) {

	print(directoryList_sequence[i]);
	}
	
videos = getDirectory("videos");

for (i = 0; i < directoryList_sequence.length; i++) {
	
	setBatchMode(true);
	
 	subdir = sequence_directory + File.separator + directoryList_sequence[i];
 	
 	print(subdir);
  	
  	File.openSequence(subdir, "virtual");
  	//run("Open Next");
	
	//File.openSequence(directoryList_sequence[i], "virtual");
	//run("Image Sequence...", "open="directoryList_sequence[i]);

	title = getTitle();
	filename_no_extension = File.getNameWithoutExtension(title);
	//fullName = "Green_Uncalibrated_" + filename_no_extension;
	//fullName = "Red_Uncalibrated_" + filename_no_extension;
	fullName = "Phase_Original_" + filename_no_extension;
	print(fullName);
	
	saveAs("tiff", videos + fullName);
	close("*");
	}

print("Done");
