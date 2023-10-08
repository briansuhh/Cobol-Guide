#### Guide on how to run a COBOL Program using DosBox

- Install DosBox if you don't have Dosbox yet
```bash
# for windows, go to this link and download the installer
https://www.dosbox.com/download.php?main=1

# for linux, you can install it using this command
sudo apt install dosbox
```

- Move the COBOL folder inside the C drive
```bash
# for windows, you can move the folder by using this command
move <path to your folder> c:

# for linux, you can move the folder by using this command
mv <path to your folder> /mnt/c

# NOTE: you can also move the folder by using the file explorer
```

- Open DosBox and mount the folder where you saved your COBOL program
```bash
# mount the folder by using this command
mount c: c:\COBOL

# go to the drive where you mounted the folder
c:
```

- Compile and run the COBOL program
```bash
# compile your program by using this command
realcob <name of your program>.cob

# after compiling, you can link the object file by using this command
link <name of your program>.obj

# after linking, you can now run your program by using this command
<name of your program>.exe
```

- NOTE: You can only save your COBOL program within the COBOL folder located in the C drive. To save your program in a different folder, mount the desired folder, and transfer all realia files into it.


