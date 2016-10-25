import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "WaylandCompositor"
    Depends { name: "Qt"; submodules: ["core", "gui", "quick", "qml"]}

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
    libNameForLinkerDebug: "Qt5WaylandCompositor"
    libNameForLinkerRelease: "Qt5WaylandCompositor"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5WaylandCompositor.so.5.7.0"
    cpp.defines: ["QT_WAYLANDCOMPOSITOR_LIB", "QT_COMPOSITOR_WAYLAND_GL"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtWaylandCompositor"]
    cpp.libraryPaths: []
    
}
