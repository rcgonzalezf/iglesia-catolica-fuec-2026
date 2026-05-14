# Retiro del Perdón 2026

Presentaciones estáticas del retiro (impress.js), publicadas en GitHub Pages y revisables en local con un servidor HTTP simple.

## Vista previa local

Desde la raíz del repositorio:

```bash
./restart-server.sh
```

El script detiene cualquier proceso que escuche en el puerto **8765** y vuelve a arrancar `python3 -m http.server` sirviendo la raíz del proyecto. Abre [http://localhost:8765/](http://localhost:8765/) (por ejemplo, el portal en `index.html`).

Para otro puerto:

```bash
PORT=8080 ./restart-server.sh
```

Detén el servidor con `Ctrl+C` en la misma terminal.

## Si el navegador no muestra los cambios

1. Ejecuta `./restart-server.sh` para reiniciar el servidor local.
2. Recarga forzada: macOS `Cmd+Shift+R`; Windows/Linux `Ctrl+Shift+R`.
3. Comprueba que la URL apunte a este repositorio y no a una copia antigua o a GitHub Pages sin desplegar.

## Despliegue

Los cambios en la rama `main` se publican en GitHub Pages mediante el workflow en `.github/workflows/static.yml`.
