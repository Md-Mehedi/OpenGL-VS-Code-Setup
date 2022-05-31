
## How to setup Visual Studio Code to run OpenGL in Windows

#### Compiler Setup

>*If you already have compiler installed, you can skip this section. Only thing you have to do is check and know the directory of your installed compiler.*

- Download the compiler from [MinGW-64](https://www.mingw-w64.org/) website.
  - Go to `Downloads` and select `MingW-W64-builds` from the list and then click `Sourceforge` from Mingw-builds.
  - Install it to a specific folder i.e. `C:\MinGW`
- Open VS Code. Go to `Setting` and search `Compiler path`
- In `C_Cpp › Default: Compiler Path` field write `C:\MinGW`

#### Path Variable Setup

- Search "Environment variables" in Windows search box
- Select "Edit the system environment variables" from the list
- Click `Environment Variables`
- Choose `Path` from the bottom section named System variables and click `Edit`
- Click `New` and write the 'bin' location of your installed compiler. i.e. `C:\MinGW\bin`
- Similarly add `C:\Windows\System32` there.

#### OpenGL_VS_Code_Setup Download

Download this repository as zip and extracting this do the following:
- Move all .h files of `OpenGL_VS_Code_Setup\include\` to `C:\MinGW\include\`
- Move all .a files of `OpenGL_VS_Code_Setup\lib\` to `C:\MinGW\lib\`
- Move all .dll files of `OpenGL_VS_Code_Setup\dll\` to `C:\Windows\System32`

#### Setup an OpenGL Project

> *For creating any new project later you have to do the following things only. Above setup only be done one time*

- Create a folder to your desired directory. Let's say you make a folder named `MyProject` in `D:\OpenGL\MyProject`
- Open VS Code. Go to `File > Open Folder` then choose that folder which is created in previous.
- Create a new file named `main.cpp` and write some code or use the code `main.cpp` given in zip file.
- Crate a file named `Runner.sh` and write the following code into it and save it.

```batch
g++.exe -w -g -c main.cpp -o main.o
g++.exe -o main.exe main.o -lglut32 -lopengl32 -lglu32 -lwinmm -lgdi32
./main.exe
```

- Go to `Terminal > New Terminal` and a console will be opened. Write there : `.\Runner.bat` and press enter. A window will open imediately.
