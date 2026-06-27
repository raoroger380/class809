#!/usr/bin/env python3
import subprocess, os

os.chdir(r"D:\class809")
cmds = [
    "git add README.md",
    'git commit -m "Add README.md — project overview, features, tech stack, and usage guide"',
    "git push"
]
for cmd in cmds:
    r = subprocess.run(cmd, shell=True, capture_output=True, text=True)
    print(f"$ {cmd}")
    if r.returncode != 0:
        print(f"  stderr: {r.stderr.strip()}")
        print(f"  stdout: {r.stdout.strip()}")
        break
    if r.stdout.strip():
        print(f"  {r.stdout.strip()}")
