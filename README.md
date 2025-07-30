#  Folder Organizer - Bash Automation Script

This is a lightweight Bash script that automatically organizes files in a folder (like your Downloads folder) into categorized subfolders based on file type. Built for Linux and WSL users.

---

##  What It Does

Moves your cluttered files into clean folders:

| File Type     | Folder             |
|---------------|--------------------|
| `.jpg`, `.png` | `images/`         |
| `.pdf`, `.docx`| `documents/`      |
| `.zip`, `.rar` | `archives/`       |
| `.mp4`, `.mp3` | `media/`          |
| Others         | `others/`         |

---

##  How to Run

```bash
bash organize.sh

Works best when placed inside your Downloads/ folder or run directly inside any messy folder you want to organize.

Safety Features
 - Prevents accidental moves of .exe files
 - Auto-creates folders if they don’t exist
 - Skips hidden/system files

Project Structure
bash
Copy
Edit
folder-organizer/
├── organize.sh     # Main bash script
├── README.md       # Project info and instructions

Skills Demonstrated
- Bash scripting

- Linux/WSL automation

- Real-world file handling

- Git & GitHub project structure

Author
Charles Mosehla  Maponya

---

##  Demo: Before & After


Before:
Downloads/
├── file.jpg
├── resume.pdf
├── archive.zip

After:
Downloads/
├── images/file.jpg
├── documents/resume.pdf
├── archives/archive.zip



