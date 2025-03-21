

dirRaw = getDirectory("Choose dolder to be sorted");
listRaw = getFileList(dirRaw); // create array of file names
n1 = lengthOf(listRaw);
print("Number of files = " + n1);

dirOutput = getDirectory("Choose folder to be sorted");
listOutput = getFileList(dirOutput); // create array of file names

//make output folders
F02_01 = dirOutput+"F02_01"+File.separator;
File.makeDirectory(F02_01);
F02_02 = dirOutput+"F02_02"+File.separator;
File.makeDirectory(F02_02);
F02_03 = dirOutput+"F02_03"+File.separator;
File.makeDirectory(F02_03);

F03_01 = dirOutput+"F03_01"+File.separator;
File.makeDirectory(F03_01);
F03_02 = dirOutput+"F03_02"+File.separator;
File.makeDirectory(F03_02);
F03_03 = dirOutput+"F03_03"+File.separator;
File.makeDirectory(F03_03);

F04_01 = dirOutput+"F04_01"+File.separator;
File.makeDirectory(F04_01);
F04_02 = dirOutput+"F04_02"+File.separator;
File.makeDirectory(F04_02);
F04_03 = dirOutput+"F04_03"+File.separator;
File.makeDirectory(F04_03);

F05_01 = dirOutput+"F05_01"+File.separator;
File.makeDirectory(F05_01);
F05_02 = dirOutput+"F05_02"+File.separator;
File.makeDirectory(F05_02);
F05_03 = dirOutput+"F05_03"+File.separator;
File.makeDirectory(F05_03);

F06_01 = dirOutput+"F06_01"+File.separator;
File.makeDirectory(F06_01);
F06_02 = dirOutput+"F06_02"+File.separator;
File.makeDirectory(F06_02);
F06_03 = dirOutput+"F06_03"+File.separator;
File.makeDirectory(F06_03);

F07_01 = dirOutput+"F07_01"+File.separator;
File.makeDirectory(F07_01);
F07_02 = dirOutput+"F07_02"+File.separator;
File.makeDirectory(F07_02);
F07_03 = dirOutput+"F07_03"+File.separator;
File.makeDirectory(F07_03);

F08_01 = dirOutput+"F08_01"+File.separator;
File.makeDirectory(F08_01);
F08_02 = dirOutput+"F08_02"+File.separator;
File.makeDirectory(F08_02);
F08_03 = dirOutput+"F08_03"+File.separator;
File.makeDirectory(F08_03);

F09_01 = dirOutput+"F09_01"+File.separator;
File.makeDirectory(F09_01);
F09_02 = dirOutput+"F09_02"+File.separator;
File.makeDirectory(F09_02);
F09_03 = dirOutput+"F09_03"+File.separator;
File.makeDirectory(F09_03);

F10_01 = dirOutput+"F10_01"+File.separator;
File.makeDirectory(F10_01);
F10_02 = dirOutput+"F10_02"+File.separator;
File.makeDirectory(F10_02);
F10_03 = dirOutput+"F10_03"+File.separator;
File.makeDirectory(F10_03);

F11_01 = dirOutput+"F11_01"+File.separator;
File.makeDirectory(F11_01);
F11_02 = dirOutput+"F11_02"+File.separator;
File.makeDirectory(F11_02);
F11_03 = dirOutput+"F11_03"+File.separator;
File.makeDirectory(F11_03);

listFolders = getFileList(dirOutput); // create array of folder names
n2 = lengthOf(listFolders);
print("Number of folders = " + n2);

	

//file sorter
for (i=0; i<n1; i++) {
	
	//showProgress(i);
	
	setBatchMode(true);
	
	open(dirRaw + listRaw[i]);	
	
	title = getTitle();
	print(title);
	
	//----
	
	if (startsWith(title, "Phase Original_F2_1")) {
		saveAs("Tiff", F02_01 + title);
	}	
	if (startsWith(title, "Phase Original_F2_2")) {
		saveAs("Tiff", F02_02 + title);
	}	
	if (startsWith(title, "Phase Original_F2_3")) {
		saveAs("Tiff", F02_03 + title);
	}	
	
	//----
	
	if (startsWith(title, "Phase Original_F3_1")) {
		saveAs("Tiff", F03_01 + title);
	}	
	if (startsWith(title, "Phase Original_F3_2")) {
		saveAs("Tiff", F03_02 + title);
	}	
	if (startsWith(title, "Phase Original_F3_3")) {
		saveAs("Tiff", F03_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_F4_1")) {
		saveAs("Tiff", F04_01 + title);
	}	
	if (startsWith(title, "Phase Original_F4_2")) {
		saveAs("Tiff", F04_02 + title);
	}	
	if (startsWith(title, "Phase Original_F4_3")) {
		saveAs("Tiff", F04_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_F5_1")) {
		saveAs("Tiff", F05_01 + title);
	}	
	if (startsWith(title, "Phase Original_F5_2")) {
		saveAs("Tiff", F05_02 + title);
	}	
	if (startsWith(title, "Phase Original_F5_3")) {
		saveAs("Tiff", F05_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_F6_1")) {
		saveAs("Tiff", F06_01 + title);
	}	
	if (startsWith(title, "Phase Original_F6_2")) {
		saveAs("Tiff", F06_02 + title);
	}	
	if (startsWith(title, "Phase Original_F6_3")) {
		saveAs("Tiff", F06_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_F7_1")) {
		saveAs("Tiff", F07_01 + title);
	}	
	if (startsWith(title, "Phase Original_F7_2")) {
		saveAs("Tiff", F07_02 + title);
	}	
	if (startsWith(title, "Phase Original_F7_3")) {
		saveAs("Tiff", F07_03 + title);
	}	
	//----	
	if (startsWith(title, "Phase Original_F8_1")) {
		saveAs("Tiff", F08_01 + title);
	}	
	if (startsWith(title, "Phase Original_F8_2")) {
		saveAs("Tiff", F08_02 + title);
	}	
	if (startsWith(title, "Phase Original_F8_3")) {
		saveAs("Tiff", F08_03 + title);
	}	
	//----	
	if (startsWith(title, "Phase Original_F9_1")) {
		saveAs("Tiff", F09_01 + title);
	}	
	if (startsWith(title, "Phase Original_F9_2")) {
		saveAs("Tiff", F09_02 + title);
	}	
	if (startsWith(title, "Phase Original_F9_3")) {
		saveAs("Tiff", F09_03 + title);
	}	
	//----	
	if (startsWith(title, "Phase Original_F10_1")) {
		saveAs("Tiff", F10_01 + title);
	}	
	if (startsWith(title, "Phase Original_F10_2")) {
		saveAs("Tiff", F10_02 + title);
	}	
	if (startsWith(title, "Phase Original_F10_3")) {
		saveAs("Tiff", F10_03 + title);
	}
	//----	
	if (startsWith(title, "Phase Original_F11_1")) {
		saveAs("Tiff", F11_01 + title);
	}	
	if (startsWith(title, "Phase Original_F11_2")) {
		saveAs("Tiff", F11_02 + title);
	}	
	if (startsWith(title, "Phase Original_F11_3")) {
		saveAs("Tiff", F11_03 + title);
	}
	//----	
	

	close("*");

}	
