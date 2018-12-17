# Far manager macros:
#### 1. Quick Path
#### 2. Subl Open
## Description

1. **Quick Path** macro allows you quick navigate to path in Far Manager using windows clipboard. It is useful then you working with different programs like text editor, ide, windows explorer etc and you needed quick to open folder path in Far Manager.

2. **Subl Open** macro open file/files or folder/folders or even files and folders at the same time in Sublime Text 3.

## Installation

1. Far Manager (of course)
2. FarCmds (standard plugin by default)
3. [QuickPath.lua](QuickPath.lua) or [SublOpen.lua](SublOpen.lua) from repo need to copy into:

    ```C:\Users\{username}\AppData\Roaming\Far Manager\Profile\Macros\scripts\```

:red_circle: Do not forget to put **your personal** `{username}`.

If you use portable path may be: ```Far Manager\Profile\Macros\scripts\```


##   1. Macro usage Quick Path
#### By default hot key is ***Alt+F***. Every time you need to copy path into Windows clipboard.

<br>

> *Windows explorer path.*

<br>
<img src="img\quick_path_1.gif" alt="Logo Title Text 1" width="750"/>
<br>

> *Absolute path from text editor. File manager cursor will stop on file.*

<br>
<img src="img\quick_path_2.gif" alt="Logo Title Text 2" width="750"/>
<br>

> *Windows system path variables is working.*

<br>
<img src="img\quick_path_3.gif" alt="Logo Title Text 3" width="750"/>
<br>

> *Also macro can edit the absolute path in command line if path contains mistake, but with system variables it can't.*

<br>
<img src="img\quick_path_4.gif" alt="Logo Title Text 4" width="750"/>

---

## 2. Macro usage Subl Open
#### By default hot key is ***F4***. If you want to change it, just edit ```key="F4";``` in macro to another key.

##### Macro can open:
- 1 file or folder under cursor
- marked files or folders
- marked files and folders in same time

<img src="img\subl_open.gif" alt="Logo Title Text 4" width="750"/>

---
## License

The MIT License

Copyright (c) 2018 tonnysi

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE.

[MIT license](https://opensource.org/licenses/mit-license.php "MIT license")
