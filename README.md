# 🚀 Laravel Command Suite

![Maintenance](https://img.shields.io/badge/Maintained%3F-yes-green.svg)
![Bash](https://img.shields.io/badge/Language-Bash-red.svg)
![Laravel](https://img.shields.io/badge/Framework-Laravel-orange.svg)

> **⚠️ ATTENTION:** These scripts are built for developers who value speed and safety. Stop repeating yourself and start automating.

---

## 🛠 Tools Included

### 🔴 1. `lara.sh` (The Smart Wrapper)
A dual-purpose script that detects your directory context.
- **Outside a project:** Acts as a `composer` bootstrapper to create new Laravel apps.
- **Inside a project:** Acts as an intelligent proxy for `php artisan`.

### 🔴 2. `model.sh` (The Defensive Creator)
Artisan's `make:model` is good, but this is better.
- **Collision Detection:** It will **KILL** the process if the model already exists, preventing accidental overwrites.
- **Smart Directory Mapping:** Automatically finds your models whether they are in `app/Models` or the legacy `app/` directory.

---

## 📥 Installation & Global Access

To make these tools feel like native OS commands, follow these steps:

### 1. Make them executable
```bash
chmod +x lara.sh model.sh
```
2. Set up Global Variables (Linux/macOS)
Don't type ./ every time. Add these to your system path:
```Diff
- # Add this to your ~/.bashrc or ~/.zshrc file:
+ export PATH="$PATH:/path/to/your/scripts/folder"
```
Then run: source ~/.bashrc (or ~/.zshrc). Now you can just type lara or model from anywhere!

🎮 Usage Examples
Create a new project:
```bash
lara new my-web-app
```
Create a model with Migration, Factory, and Controller:
```bash
Create a model with Migration, Factory, and Controller:
```
Flags supported: -m (Migration), -f (Factory), -s (Seeder), -c (Controller), -r (Resource), -p (Policy).

🛑 Security & Validation

```Diff
- These scripts perform the following checks:
+ 1. Root Directory: Ensures 'artisan' exists before running project commands.
+ 2. File Conflict: Scans app/Models/ to ensure you don't overwrite existing logic.
+ 3. Input Validation: Prevents execution if arguments are missing.
```
<p align="center">Developed with 🔥 by <strong>Abdelrahman</strong></p>

