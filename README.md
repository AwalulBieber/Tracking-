# RetroLens 🖐️✨

Real-time hand-tracking portal filters. This repository keeps the original Python/OpenCV engine and adds a browser edition for Android and other modern browsers.

## Platform support

| Platform | Edition | Status |
|---|---|---|
| Windows 10/11 | Python desktop | Existing engine + launcher |
| Linux | Python desktop | Existing engine + launcher |
| Android | Browser/PWA | Browser edition in web/ |
| Desktop browser | Browser/PWA | Browser edition in web/ |

Android uses the browser edition. The original Python/OpenCV desktop program is not an Android APK.

## Windows desktop

1. Install Python 3.11 (64-bit) and a working webcam.
2. Open the repository folder.
3. Double-click run_windows.bat, or run:
   ```powershell
   py -3.11 -m pip install -r requirements.txt
   py -3.11 Retrolens.py
   ```

## Linux desktop

Install Python 3.11, pip, venv support and your camera dependencies. Then:
```bash
chmod +x run_linux.sh
./run_linux.sh
```

If your distribution manages Python packages externally, use a virtual environment:
```bash
python3 -m venv .venv
source .venv/bin/activate
python -m pip install -r requirements.txt
python Retrolens.py
```

## Android / browser edition

1. Publish the contents of web/ on an HTTPS static host (GitHub Pages is suitable).
2. Open the hosted page in Chrome on Android.
3. Allow camera access and tap Aktifkan kamera.
4. Use Add to Home screen in Chrome to install it as a PWA.

Camera access requires HTTPS (or localhost). The browser edition loads MediaPipe Tasks Vision and its hand-landmarker model from their CDNs, so an internet connection is required on first load. The service worker caches the app shell; the tracking model/runtime may still need network access.

## Browser controls

- Show one or two hands to create a portal region.
- Pinch thumb and pinky to cycle filters.
- Select 2D or 3D Neon Portal mode.
- Switch between front and rear cameras.
- Save a screenshot as PNG.

## Original Python controls

- Spread both hands to open a portal.
- Pinch thumb + pinky to switch filter.
- Fist both hands / press C to toggle 2D/3D mode.
- N / P for next/previous filter, S for screenshot, Q to quit.

## Notes

- The desktop engine is kept in Retrolens.py; the browser edition is separate in web/.
- Requirements and camera performance vary by operating system and hardware.
- Test camera permissions and GPU availability on each target device before release.

## License

MIT. See LICENSE.
