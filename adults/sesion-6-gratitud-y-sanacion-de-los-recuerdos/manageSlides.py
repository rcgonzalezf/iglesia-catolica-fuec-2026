#!/usr/bin/env python3
"""
Launcher: ejecuta el manageSlides.py de la raíz del repositorio con cwd en esta sesión,
para que ./slides se detecte automáticamente.

Uso (desde esta carpeta):
  python3 manageSlides.py delete 002.html
  python3 manageSlides.py add 10
"""

from __future__ import annotations

import subprocess
import sys
from pathlib import Path

_HERE = Path(__file__).resolve().parent
_REPO_ROOT = _HERE.parents[1]
_ROOT_SCRIPT = _REPO_ROOT / "manageSlides.py"

if not _ROOT_SCRIPT.is_file():
    print(f"Error: no se encuentra {_ROOT_SCRIPT}", file=sys.stderr)
    sys.exit(1)

raise SystemExit(
    subprocess.call([sys.executable, str(_ROOT_SCRIPT)] + sys.argv[1:], cwd=str(_HERE))
)
