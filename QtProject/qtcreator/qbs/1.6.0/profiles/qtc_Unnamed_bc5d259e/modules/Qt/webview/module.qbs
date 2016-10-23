import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WebView"
    Depends { name: "Qt"; submodules: []}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Quick.so.5.7.0", "/usr/lib/libQt5Gui.so.5.7.0", "/usr/lib/libQt5Qml.so.5.7.0", "/usr/lib/libQt5Network.so.5.7.0", "/usr/lib/libQt5Core.so.5.7.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5WebView"
    libNameForLinkerRelease: "Qt5WebView"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WebView.so.5.7.0"
    cpp.defines: ["QT_WEBVIEW_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWebView"]
    cpp.libraryPaths: []
    
}