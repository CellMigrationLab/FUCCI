close("*");

dirRed = getDirectory("Choose a Directory Redlei");
listRed = getFileList(dirRed);
listRed = Array.sort(listRed);
n1 = lengthOf(listRed);

dirGreen = getDirectory("Choose a Directory Greenlei");
listGreen = getFileList(dirGreen);
listGreen = Array.sort(listGreen);

dirBF = getDirectory("Choose a Directory BFlei");
listBF = getFileList(dirBF);
listBF = Array.sort(listBF);

dirMask = getDirectory("Choose a Directory Masklei");
listMask = getFileList(dirMask);
listMask = Array.sort(listMask);

dirResults = getDirectory("Choose a Directory Results");


//---------------------------------

setBatchMode(true);
    for (i=0; i<n1; i++) {

	pathRed = dirRed+listRed[i];
	open(pathRed);
	run("32-bit");
	title = getTitle();
	title2 = File.getNameWithoutExtension(title);
	
	print(title2);
	
	rename("RED");

	pathGreen = dirGreen+listGreen[i];
	open(pathGreen);
	rename("Green");
	run("32-bit");

	pathBF = dirBF+listBF[i];
	open(pathBF);
	rename("BF");
	run("32-bit");
	
	pathMask = dirMask+listMask[i];
	open(pathMask);
	rename("Mask");
	run("Fire");

	run("Merge Channels...", "c1=RED c2=Green c4=BF c7=Mask create");

	saveAs("tiff", dirResults + title2 + "_tracking");
	
	close("*");
	
	}