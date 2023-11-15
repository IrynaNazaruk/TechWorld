# OS & Linux basic
OS as abstraction layer between applications and hardware. Instead of applications (like browser) interacting with the computer hardware directly, they can use the OS as abstraction layer between the two. Messy, if every app had to talk directly to the hardware parts. Apps, like browser can't be installed directly on the hardware.  
## Linux file system

A Linux file system is a structured collection of files on a disk drive or a partition. A partition is a segment of memory and contains some specific data. File system is used to handle the data management of the storage. The Linux file system has a hierarchical tree structure with a root folder.

**EVERYTHING in Linux is a FILE!**
- Document, pictures, etc;
- Commands (ls, df, cp, etc);
- Devices (printer, keyboard, etc);
- Directories. 

### File Structure
- / - the highest (top-most) directory in the filesystem hierarchy.
- /home - contains home directories of all non-root users (f.e. /root is root user's home dir).
- /bin - executables for most essentials user commands.
- /sbin - essential system binaries, only su can execute.
- /lib - shared lib that execs from /bin or /sbin use.
- /usr - used for user home dir (histroic reasons due to storage limitations).
- /usr/local - programs that YOU install on computer (3rd party apps) available for all users.
- /opt - 3rd party programs you install that DONT split its components.
- /boot - files required for booting.
- /etc - system config.
- /dev - device files (printer, keyboard, etc).
- /var - place where logs are stored.
- /var/cache - cache files are stored.
- /tmp - temporary resources required for processes.
- /media - removable media.
- /mnt - temporary mount points.
- Hidden files (starts with a dot).

## CLI basic
- `pwd `- show current dir
- `ls {dir}` - list contents
- `cd {dir}` - change dir (cd / - change to root dir; just cd is go to home; cd .. - make a step back)
- `mkdir {new-dir}` - make dir
- `touch {file}` - create file
- `rm {file} ` - delete file (`rm -f` - delete file in a dir; `rm -rf` - recursively delete directory along with the file)
- `clear` - clears terminal
- `mv {file} {new-file} `- rename file to new name
- `cp -r {dir} {new-dir}`- copy contents folder to new folder
- `ls -R` - list all folders and files in each
- `history` - lists all recent cmd in terminal
- `ls -a` - display hidden files
- `ls -l` - print files in long list format (ls -la for listing hidden files)
- `cat` - show contents file
- `uname -a` - show system & kernel
- `cat /etc/os-release` - show release version
- `lscpu` - cpu info
- `sudo` - grants super user privileges for cmd
- `su` - - become user
- `|` - pipe, passes output of one cmd as input of next cmd
- `| less` - displays reader friendly format for info in CLI
- `| grep` - filter input based on pattern search

## Package Manager

### What is a software package?

* A compressed archive, containing all required files for the software to run.
* Apps usually have dependencies, which needs to be installed with it.
* Files are split across different folders.

**Tasks of a Package Manager:**
1. Downloads, installs or updates existing software from a repository
2. Ensures the integrity and authenticity of the package
3. Manages and resolves all required dependencies
4. Knows where to put all the files in the Linux file system
5. Easy upgrading of the software

Package Manager is already included in every Linux distribution. On Ubuntu we have APT package manager. Here're the most useful command:
`apt search <package  name>`
`apt install <package  name>`
`apt remove <package  name>`
`apt update`
`apt upgrade`
`apt autoremove`
`apt full-upgrade`

### Alternative Package Manager
*Why do u need it?*
1. When there are packages, that are not available in these official repositories.
2. Package is available, but not the latest version (software packages are verified, before adding to repository and verification process takes time)
3. Programs, which are not available: Browsers, Code editors etc.

***APT-GET*** - very similar to APT package manager for Ubuntu.

***Snap Package Manager*** - is a software packaging and deployment system. A package manager for all OS, which use the Linux kernel.

## Vim Editor
`:wq`                    #quit and save
`:q!`                     #quit without saving
`i`                      #switch to insert mode
`dd`      #delete a line
`d10` #delete 10 lines
`u` #undo
`0` #jump to start of line
`$` #jump to end of line
`A` #jump to end of line & switch to insert mode
`12G` #go to line 12
`/pattern` #will search the pattern
`n `#jump to next match
`N` #jump to previous match
`:%s/my-old-string/my-new-string` # will replace all occurrences of "my-old-string" with "my-new-string"`

## User permissions
There're 3 user categories:
1. Root user
2. Regular user
3. Service user
### Basic Linux Commands for user administration
`adduser {user}` - create a user
`passwd `- change the user account passwords
`su` - switch root user
`groupadd {group} `- create a group
`deluser {user}` - to delte user

**Chmod**
`chmod -x` - remove execute permissions for all owners
`chmod g-w` - remove write permissions for group
`chmod g+x` - add execute permissions for group
`chmod u+x` - add execute permission for user
`chmod o+x` - add execute permission for others
`chmod g=rwx` - sets specific block permissions for group
`chmod 777` - gives all permission to all owners