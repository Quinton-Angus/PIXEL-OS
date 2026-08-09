const { app, BrowserWindow } = require("electron");

function createWindow() {
    const win = new BrowserWindow({
        fullscreen: true,
        frame: false,
        kiosk: true,
        autoHideMenuBar: true,
        webPreferences: {
            contextIsolation: true
        }
    });

    win.loadFile("./render/index.html");
}

app.whenReady().then(createWindow);

app.on("window-all-closed", () => {
    if (process.platform !== "darwin") {
        app.quit();
    }
});