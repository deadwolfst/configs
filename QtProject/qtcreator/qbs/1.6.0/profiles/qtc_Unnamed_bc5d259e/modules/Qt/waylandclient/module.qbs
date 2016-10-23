import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WaylandClient"
    Depends { name: "Qt"; submodules: ["core", "gui"]}

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
    libNameForLinkerDebug: "Qt5WaylandClient"
    libNameForLinkerRelease: "Qt5WaylandClient"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WaylandClient.so.5.7.0"
    cpp.defines: ["QT_WAYLANDCLIENT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWaylandClient"]
    cpp.libraryPaths: []
    
}
