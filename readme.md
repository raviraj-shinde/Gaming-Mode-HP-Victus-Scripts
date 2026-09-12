# Gaming Mode HP Victus Scripts
A collection of Windows batch scripts for HP Victus laptops.


## Target Device
* HP Victus laptops
* Windows operating system

<br>

## Script Execution Flow

```
    Gaming modes.bat 👈🏻
    │
    ├── Enable Gaming Mode
    │    ├── webview2_off.bat
    │    ├── searchhost_off.bat
    │    ├── windows_updates_off.bat
    │    └── stop_services.bat
    │
    └── Disable Gaming Mode
        ├── webview2_on.bat
        ├── searchhost_on.bat
        ├── windows_updates_on.bat
        └── restore_services.bat
```

<br>

## ⚠️ Disclaimer

The `webview2_off.bat` and `searchhost_off.bat` scripts modify Windows components and may affect applications or system functionality.

**Please choose option `Disable Gaming Mode` before shutting down, or run it later to restore normal mode.**

<br>

## Which File to Run?
To enable Gaming Mode on your HP Victus laptop:

1. Open the `scripts` folder.
2. Run `Gaming modes.bat`.
3. If Administrator permission is required, select **Yes**.
4. Every time you want to enable/disable Gaming Mode, run `Gaming modes.bat` again.
   



