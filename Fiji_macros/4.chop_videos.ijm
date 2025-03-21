close("*");

files_green = getDirectory("Select the Green");
fileList_green = getFileList(files_green);
Array.sort(fileList_green)

n1 = lengthOf(fileList_green);
print("----------------------");
print("Green files:" +" "+ n1);

files_red = getDirectory("Select the Red");
fileList_red = getFileList(files_red);
Array.sort(fileList_red)

n2 = lengthOf(fileList_red);
print("Red files:" +" "+ n2);

files_bf = getDirectory("Select the BF");
fileList_bf = getFileList(files_bf);
Array.sort(fileList_bf)

n3 = lengthOf(fileList_bf);
print("BF files:" +" "+ n3);


files_green_chop = getDirectory("Select the Green-chop");
files_red_chop = getDirectory("Select the Red-chop");
files_bf_chop = getDirectory("Select the BF-chop");

//----------------------------

for (p = 0; p < n1; p++) {
	
	//open BF file
	bf_file_path = files_bf + fileList_bf[p];
	open(bf_file_path);
	bf_title = getTitle();
	print(bf_title);
	bffilename_no_extension = File.getNameWithoutExtension(bf_title);
	
	//@ Integer (label="Check confluency cut-off", min=0, max=10, value=5) cutoff
	waitForUser("Check confluency cut-off");
	cutoff = getNumber("Check confluency cut-off", 200 );
	
	run("Duplicate...", "duplicate range=1-" + cutoff);
	rename("bf_chop");
	saveAs("tiff", files_bf_chop + bffilename_no_extension);
	selectWindow(bf_title);
	close();
	
	//open green file
	green_file_path = files_green + fileList_green[p];	
	open(green_file_path);
	green_title = getTitle();
	print(green_title);
	greenfilename_no_extension = File.getNameWithoutExtension(green_title);
		
	selectWindow(green_title);
	run("Duplicate...", "duplicate range=1-" + cutoff);
	rename("green_chop");
	saveAs("tiff", files_green_chop + greenfilename_no_extension);

	selectWindow(green_title);
	close();
	
	//open red file
	red_file_path = files_red + fileList_red[p];
	open(red_file_path);
	red_title = getTitle();
	print(red_title);
	redfilename_no_extension = File.getNameWithoutExtension(red_title);
	run("Duplicate...", "duplicate range=1-" + cutoff);
	rename("red_chop");
	saveAs("tiff", files_red_chop + redfilename_no_extension);
	selectWindow(red_title);
	close();
	
	close("*");
	
	}

print("Done MTFCK");	
	



