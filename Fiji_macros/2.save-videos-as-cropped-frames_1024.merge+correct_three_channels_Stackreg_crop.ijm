close("*");

files_green = getDirectory("Select the Green");
fileList_green = getFileList(files_green);
Array.sort(fileList_green)

n1 = lengthOf(fileList_green);
print("----------------------");
print("Green files to correct:" +" "+ n1);

files_red = getDirectory("Select the Red");
fileList_red = getFileList(files_red);
Array.sort(fileList_red)

n2 = lengthOf(fileList_red);
print("Red files to correct:" +" "+ n2);

files_bf = getDirectory("Select the BF");
fileList_bf = getFileList(files_bf);
Array.sort(fileList_bf)

n3 = lengthOf(fileList_bf);
print("BF files to correct:" +" "+ n3);

results = getDirectory("Results");

// prepare a folder to output the both images
both_dir = results + "both-corrected" + File.separator ;
File.makeDirectory(both_dir);

// prepare a folder to output the both images
green_dir = results + "green-corrected" + File.separator ;
File.makeDirectory(green_dir);

// prepare a folder to output the both images
red_dir = results + "red-corrected" + File.separator ;
File.makeDirectory(red_dir);

// prepare a folder to output the both images
bf_dir = results + "BF-corrected" + File.separator ;
File.makeDirectory(bf_dir);


//------------------

for (p = 0; p < n1; p++) {
	
	setBatchMode(true);
	
	showProgress(p+1, n1);
	
	//open BF file
	bf_file_path = files_bf + fileList_bf[p];
	open(bf_file_path);
	bf_title = getTitle();
	print(bf_title);
	run("16-bit");
	//run("Bleach Correction", "correction=[Simple Ratio] background=0");
	rename("BF");
	
	//open green file
	green_file_path = files_green + fileList_green[p];
	
	open(green_file_path);
	green_title = getTitle();
	print(green_title);
	filename_no_extension = File.getNameWithoutExtension(green_title);
	filename_no_extension = replace(filename_no_extension, "Green_Uncalibrated_", ""); // change here according to the file naming (spaces won't matter)
	print(filename_no_extension);
	
	//run("Bleach Correction", "correction=[Simple Ratio] background=0");
	run("Subtract Background...", "rolling=50 stack");
	rename("green-no-bleach");
	close(green_title);
	
	//open red file
	red_file_path = files_red + fileList_red[p];
	open(red_file_path);
	red_title = getTitle();
	print(red_title);
	//run("Bleach Correction", "correction=[Simple Ratio] background=0");
	run("16-bit");
	rename("red-no-bleach");
	run("Subtract Background...", "rolling=50 stack");
	close(red_title);
	
//	imageCalculator("Add create stack", "green-no-bleach","red-no-bleach");
		
	run("Merge Channels...", "c2=green-no-bleach c6=red-no-bleach create keep");
	run("RGB Color", "slices");
	run("8-bit");
	rename("both");
//	run("16-bit");
	
	
	//create path for temp correction file

	getDateAndTime(year, month, dayOfWeek, dayOfMonth,
	hour, minute, second, msec);
	tmpfile  = getDirectory("temp");
	tmpfile += "MSR-" + year + "-" + month + "-" + dayOfMonth +
	"_" + hour + "-" + minute + "-" + second + ".txt";
	
	run("MultiStackReg", "stack_1=both" 
	+ " action_1=Align"
	+ " file_1=[" + tmpfile + "]"
	+ " stack_2=None"
	+ " action_2=Ignore"
	+ " file_2=[]"
	+ " transformation=Translation save");
	
	
//process both
	selectWindow("both");
	getDimensions(width, height, channels, slices, frames);
	//makeRectangle(162, 1, 972, 972);
	makeRectangle(136, 0, 1024, 972);
    run("Crop");
    
    newImage("Untitled", "16-bit black", 1024, 1024, slices);

	for (f = 0; f < slices; f++) {
		selectWindow("both");
		setSlice(f+1);
		run("Select All");
		run("Copy");
		selectWindow("Untitled");
		//setSlice(i*frames + f+1);
		setSlice(f+1);
		run("Paste");	
		}	
		
	run("Select None");
	run("Enhance Contrast", "saturated=0.35");
	saveAs("tiff", both_dir + filename_no_extension);		
	//run("Select None");
	close("both");
	close("Untitled");
	
	//process green

	run("MultiStackReg", "stack_1=green-no-bleach" +
	" action_1=[Load Transformation File]" +
	" file_1=[" + tmpfile + "]" +
	" stack_2=None" +
	" action_2=Ignore" +
	" file_2=[]" +
	" transformation=Translation");
	
	selectWindow("green-no-bleach");
	//makeRectangle(162, 1, 972, 972);
	
	makeRectangle(136, 0, 1024, 972);
    run("Crop");
    
    newImage("Untitled", "16-bit black", 1024, 1024, slices);

	for (f = 0; f < slices; f++) {
		selectWindow("green-no-bleach");
		setSlice(f+1);
		run("Select All");
		run("Copy");
		selectWindow("Untitled");
		//setSlice(i*frames + f+1);
		setSlice(f+1);
		run("Paste");	
		}	
		
	run("Select None");
	run("Enhance Contrast", "saturated=0.35");
	saveAs("tiff", green_dir + filename_no_extension);
	//run("Select None");
	close("green-no-bleach");
	close("Untitled");
	
	//process red
	
	run("MultiStackReg", "stack_1=red-no-bleach" +
	" action_1=[Load Transformation File]" +
	" file_1=[" + tmpfile + "]" +
	" stack_2=None" +
	" action_2=Ignore" +
	" file_2=[]" +
	" transformation=Translation");
	
	selectWindow("red-no-bleach");
	makeRectangle(136, 0, 1024, 972);
    run("Crop");
    
    newImage("Untitled", "16-bit black", 1024, 1024, slices);

	for (f = 0; f < slices; f++) {
		selectWindow("red-no-bleach");
		setSlice(f+1);
		run("Select All");
		run("Copy");
		selectWindow("Untitled");
		//setSlice(i*frames + f+1);
		setSlice(f+1);
		run("Paste");	
		}	
		
	run("Select None");
	run("Enhance Contrast", "saturated=0.35");
	saveAs("tiff", red_dir + filename_no_extension); 
	//run("Select None");
	close("red-no-bleach");
	close("Untitled");

	//process BF
	
	run("MultiStackReg", "stack_1=BF" +
	" action_1=[Load Transformation File]" +
	" file_1=[" + tmpfile + "]" +
	" stack_2=None" +
	" action_2=Ignore" +
	" file_2=[]" +
	" transformation=Translation");
	
	selectWindow("BF");
	makeRectangle(136, 0, 1024, 972);
    run("Crop");
    
    newImage("Untitled", "16-bit black", 1024, 1024, slices);

	for (f = 0; f < slices; f++) {
		selectWindow("BF");
		setSlice(f+1);
		run("Select All");
		run("Copy");
		selectWindow("Untitled");
		//setSlice(i*frames + f+1);
		setSlice(f+1);
		run("Paste");	
		}	
		
	run("Select None");
	run("Enhance Contrast", "saturated=0.35");
	saveAs("tiff", bf_dir + filename_no_extension);
	//run("Select None");
	close("BF");
	close("Untitled");
		
	close("*");

	}

	

print("---- Done MTFCK! ---");

