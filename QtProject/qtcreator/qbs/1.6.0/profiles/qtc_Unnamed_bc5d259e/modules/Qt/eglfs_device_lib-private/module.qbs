import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "EglDeviceIntegration"
    Depends { name: "Qt"; submodules: ["core", "gui", "core-private", "gui-private", "platformsupport-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5PlatformSupport.a", "ts", "fontconfig", "freetype", "/usr/lib/libQt5DBus.so.5.7.0", "dl", "gthread-2.0", "glib-2.0", "Xrender", "Xext", "X11", "m", "input", "xkbcommon", "udev", "mtdev", "EGL", "GL", "/usr/lib/libQt5Gui.so.5.7.0", "/usr/lib/libQt5Core.so.5.7.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: ["-pthread"]
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5EglDeviceIntegration"
    libNameForLinkerRelease: "Qt5EglDeviceIntegration"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5EglDeviceIntegration.so.5.7.0"
    cpp.defines: ["QT_EGLFS_DEVICE_LIB_LIB"]
    cpp.includePaths: []
    cpp.libraryPaths: []
    
}
