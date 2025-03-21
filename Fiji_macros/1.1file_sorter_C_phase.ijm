

dirRaw = getDirectory("Choose dolder to be sorted");
listRaw = getFileList(dirRaw); // create array of file names
n1 = lengthOf(listRaw);
print("Number of files = " + n1);

dirOutput = getDirectory("Choose folder to be sorted");
listOutput = getFileList(dirOutput); // create array of file names

//make output folders
C02_01 = dirOutput+"C02_01"+File.separator;
File.makeDirectory(C02_01);
C02_02 = dirOutput+"C02_02"+File.separator;
File.makeDirectory(C02_02);
C02_03 = dirOutput+"C02_03"+File.separator;
File.makeDirectory(C02_03);

C03_01 = dirOutput+"C03_01"+File.separator;
File.makeDirectory(C03_01);
C03_02 = dirOutput+"C03_02"+File.separator;
File.makeDirectory(C03_02);
C03_03 = dirOutput+"C03_03"+File.separator;
File.makeDirectory(C03_03);

C04_01 = dirOutput+"C04_01"+File.separator;
File.makeDirectory(C04_01);
C04_02 = dirOutput+"C04_02"+File.separator;
File.makeDirectory(C04_02);
C04_03 = dirOutput+"C04_03"+File.separator;
File.makeDirectory(C04_03);

C05_01 = dirOutput+"C05_01"+File.separator;
File.makeDirectory(C05_01);
C05_02 = dirOutput+"C05_02"+File.separator;
File.makeDirectory(C05_02);
C05_03 = dirOutput+"C05_03"+File.separator;
File.makeDirectory(C05_03);

C06_01 = dirOutput+"C06_01"+File.separator;
File.makeDirectory(C06_01);
C06_02 = dirOutput+"C06_02"+File.separator;
File.makeDirectory(C06_02);
C06_03 = dirOutput+"C06_03"+File.separator;
File.makeDirectory(C06_03);

C07_01 = dirOutput+"C07_01"+File.separator;
File.makeDirectory(C07_01);
C07_02 = dirOutput+"C07_02"+File.separator;
File.makeDirectory(C07_02);
C07_03 = dirOutput+"C07_03"+File.separator;
File.makeDirectory(C07_03);

C08_01 = dirOutput+"C08_01"+File.separator;
File.makeDirectory(C08_01);
C08_02 = dirOutput+"C08_02"+File.separator;
File.makeDirectory(C08_02);
C08_03 = dirOutput+"C08_03"+File.separator;
File.makeDirectory(C08_03);

C09_01 = dirOutput+"C09_01"+File.separator;
File.makeDirectory(C09_01);
C09_02 = dirOutput+"C09_02"+File.separator;
File.makeDirectory(C09_02);
C09_03 = dirOutput+"C09_03"+File.separator;
File.makeDirectory(C09_03);

C10_01 = dirOutput+"C10_01"+File.separator;
File.makeDirectory(C10_01);
C10_02 = dirOutput+"C10_02"+File.separator;
File.makeDirectory(C10_02);
C10_03 = dirOutput+"C10_03"+File.separator;
File.makeDirectory(C10_03);

C11_01 = dirOutput+"C11_01"+File.separator;
File.makeDirectory(C11_01);
C11_02 = dirOutput+"C11_02"+File.separator;
File.makeDirectory(C11_02);
C11_03 = dirOutput+"C11_03"+File.separator;
File.makeDirectory(C11_03);

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
	
	if (startsWith(title, "Phase Original_C2_1")) {
		saveAs("Tiff", C02_01 + title);
	}	
	if (startsWith(title, "Phase Original_C2_2")) {
		saveAs("Tiff", C02_02 + title);
	}	
	if (startsWith(title, "Phase Original_C2_3")) {
		saveAs("Tiff", C02_03 + title);
	}	
	
	//----
	
	if (startsWith(title, "Phase Original_C3_1")) {
		saveAs("Tiff", C03_01 + title);
	}	
	if (startsWith(title, "Phase Original_C3_2")) {
		saveAs("Tiff", C03_02 + title);
	}	
	if (startsWith(title, "Phase Original_C3_3")) {
		saveAs("Tiff", C03_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_C4_1")) {
		saveAs("Tiff", C04_01 + title);
	}	
	if (startsWith(title, "Phase Original_C4_2")) {
		saveAs("Tiff", C04_02 + title);
	}	
	if (startsWith(title, "Phase Original_C4_3")) {
		saveAs("Tiff", C04_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_C5_1")) {
		saveAs("Tiff", C05_01 + title);
	}	
	if (startsWith(title, "Phase Original_C5_2")) {
		saveAs("Tiff", C05_02 + title);
	}	
	if (startsWith(title, "Phase Original_C5_3")) {
		saveAs("Tiff", C05_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_C6_1")) {
		saveAs("Tiff", C06_01 + title);
	}	
	if (startsWith(title, "Phase Original_C6_2")) {
		saveAs("Tiff", C06_02 + title);
	}	
	if (startsWith(title, "Phase Original_C6_3")) {
		saveAs("Tiff", C06_03 + title);
	}	
	//----	
	
	if (startsWith(title, "Phase Original_C7_1")) {
		saveAs("Tiff", C07_01 + title);
	}	
	if (startsWith(title, "Phase Original_C7_2")) {
		saveAs("Tiff", C07_02 + title);
	}	
	if (startsWith(title, "Phase Original_C7_3")) {
		saveAs("Tiff", C07_03 + title);
	}	
	//----	
	if (startsWith(title, "Phase Original_C8_1")) {
		saveAs("Tiff", C08_01 + title);
	}	
	if (startsWith(title, "Phase Original_C8_2")) {
		saveAs("Tiff", C08_02 + title);
	}	
	if (startsWith(title, "Phase Original_C8_3")) {
		saveAs("Tiff", C08_03 + title);
	}	
	//----	
	if (startsWith(title, "Phase Original_C9_1")) {
		saveAs("Tiff", C09_01 + title);
	}	
	if (startsWith(title, "Phase Original_C9_2")) {
		saveAs("Tiff", C09_02 + title);
	}	
	if (startsWith(title, "Phase Original_C9_3")) {
		saveAs("Tiff", C09_03 + title);
	}	
	//----	
	if (startsWith(title, "Phase Original_C10_1")) {
		saveAs("Tiff", C10_01 + title);
	}	
	if (startsWith(title, "Phase Original_C10_2")) {
		saveAs("Tiff", C10_02 + title);
	}	
	if (startsWith(title, "Phase Original_C10_3")) {
		saveAs("Tiff", C10_03 + title);
	}
	//----	
	if (startsWith(title, "Phase Original_C11_1")) {
		saveAs("Tiff", C11_01 + title);
	}	
	if (startsWith(title, "Phase Original_C11_2")) {
		saveAs("Tiff", C11_02 + title);
	}	
	if (startsWith(title, "Phase Original_C11_3")) {
		saveAs("Tiff", C11_03 + title);
	}
	//----	
	

	close("*");

}	
