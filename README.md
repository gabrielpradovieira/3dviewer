# 3D Viewer

Static Three.js model inspector for event presentations.

## Local Testing

Before committing and pushing, run the viewer locally from this folder:

```text
serve-local.bat
```

It starts a local server and opens:

```text
http://127.0.0.1:3000/
```

Keep the terminal window open while testing. Close it to stop the server.

## GitHub Pages

This project can run directly from GitHub Pages. After committing and pushing:

1. Open the repository on GitHub.
2. Go to **Settings** > **Pages**.
3. Under **Build and deployment**, set **Source** to **Deploy from a branch**.
4. Select the `main` branch and `/ (root)` folder.
5. Save.

The site will be available at:

```text
https://gabrielpradovieira.github.io/3dviewer/
```

## Preset Models

The viewer loads these FBX files from the repository:

```text
models/model1/Hammer.fbx
models/model2/Blade.fbx
models/model3/Cargo_Transporter.fbx
```

Keep the files in these paths, or update the `modelConfigs` list in `index.html`.

## Notes

- Do not open `index.html` directly with `file://`; browsers block model loading that way.
- GitHub Pages or any static web host is enough.
- The FBX files are served as-is. The app does not compress, convert, or re-export them.
