# Arch Linux Backup & Restore Script

A simple set of scripts to **backup and restore** your Arch Linux setup after a fresh install. This ensures all your installed packages and home directory files (including configurations, wallpapers, and personal data) are preserved and restored effortlessly.

## 📜 Features
- Saves a list of all installed packages (`pacman -Qq`).
- Creates a **compressed archive** of your **entire home folder**.
- Restores all installed packages after a fresh Arch install.
- Unpacks your entire home directory back to its original state.

## 🚀 Usage

### **Backup Your Arch Linux Setup**
Run the following script before reinstalling Arch to **save everything** in your home folder:

```bash
cd ~
sudo pacman -S git pv
git clone https://github.com/ShadeXploit/full-system-backup.git
cd full-system-backup/
chmod +x backup_script.sh
./backup_script.sh
```

### **Restore After a Fresh Install**

After reinstalling Arch, run this script to restore everything:

```bash
cd ~
sudo pacman -S git pv
git clone https://github.com/ShadeXploit/full-system-backup.git
cd full-system-backup/
chmod +x restore_script.sh
./restore_script.sh
```

## 🛠️ Notes

The backup script excludes itself (arch_backup) to avoid redundancy.
ensure you copy the arch_backup folder to external storage before reinstalling Arch!
After restoring, restart your session for changes to take effect.

## 📜 License

This project is licensed under the MIT License. Feel free to modify and share!

## 📬 Contributions

Feel free to open a pull request or report issues!
