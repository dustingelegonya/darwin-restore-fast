iCloud / Home Symlink Customizations
===================================================
> Purpose is to off load these directories to the cloud for easier maintenance.

Applications -> /Volumes/ultra-fast-mirror/private/indigo/applications
Assets -> /Users/indigo/iCloud/[assets]
Bench -> /Users/indigo/iCloud/[bench]
Code -> /Users/indigo/iCloud/[code]
Data -> /Users/indigo/iCloud/[data]
Desktop -> /Users/indigo/iCloud/[dump]
Documents -> /Users/indigo/iCloud/[paperwork]
Downloads -> /Users/indigo/iCloud/[dump]
Dump -> /Users/indigo/iCloud/[dump]
Graphics -> /Users/indigo/iCloud/[graphics]
iCloud -> /Users/indigo/Library/Mobile Documents/com~apple~CloudDocs
Library -> /Volumes/ultra-fast-mirror/private/indigo/library
Movies -> /Users/indigo/iCloud/[movies]
Music -> /Users/indigo/iCloud/[music]
Pictures -> /Volumes/backups
Projects -> /Users/indigo/iCloud/[projects]
Screenshots -> /Users/indigo/iCloud/[screenshots]
Public -> /Volumes/public
---

- [x] Step 1 -Confirm you are syncing to iCloud drive located here:
```
ls  -la ~Library/Mobile Documents/com~apple~CloudDocs
```
---
- [x] Step 2 - Setup symlink to that iCloud directory to make the rest of the process more efficient:
```
ln -s ~/Library/Mobile\ Documents/com\~apple\~CloudDocs iCloud
```
—
- [x] Step 3 - next is the one of the most important so lets get it out of the way, I think “Paperwork” is less abstract and helps remember the only thing I should store in their:
```
mkdir ~/iCloud/\[paperwork\];
sudo rm -rvf ~/Documents;  
ln -s ~/iCloud/\[paperwork\] Documents;
```
—
- [x] Step 4 - i like to use a single directory for my desktop and downloads called “Dump”:
```
mkdir ~/iCloud/\[_dump_\];
ln -s ~/iCloud/\[_dump_\] Dump;
sudo rm -rvf ~/Downloads;
ln -s ~/iCloud/\[_dump_\] Downloads;
sudo rm -rvf ~/Desktop;
 ln -s ~/iCloud/\[_dump_\] Desktop
```
—-
- [ ] Step 5 - Media Assets
```
sudo mkdir ~/iCloud/\[music\];
ln -s ~/iCloud/\[music\] Music;
mkdir ~/iCloud/\[movies\];
ln -s ~/iCloud/\[movies\] Movies;
```
—-
- [ ] Step 6 - And a few extras I usually create:
```
mkdir ~/iCloud/\[assets\]; ln -s ~/iCloud/\[assets\] Assets
mkdir ~/iCloud/\[bench\]; ln -s ~/iCloud/\[bench\] Bench
mkdir ~/iCloud/\[code\]; ln -s ~/iCloud/\[code\] Code
mkdir ~/iCloud/\[data\]; ln -s ~/iCloud/\[data\] Data
mkdir ~/iCloud/\[graphics\]; ln -s ~/iCloud/\[graphics\] Graphics
mkdir ~/iCloud/\[projects\]; ln -s ~/iCloud/\[projects\] Projects
mkdir ~/iCloud/\[screenshots\]; ln -s ~/iCloud/\[screenshots\] Screenshots
```
