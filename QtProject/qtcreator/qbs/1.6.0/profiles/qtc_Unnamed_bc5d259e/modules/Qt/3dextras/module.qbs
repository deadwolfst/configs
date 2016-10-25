import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DExtras"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore", "3drender", "3dinput", "3dlogic"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt53DRender.so.5.7.0", "/usr/lib/libQt53DInput.so.5.7.0", "/usr/lib/libQt53DLogic.so.5.7.0", "/usr/lib/libQt53DCore.so.5.7.0", "/usr/lib/libQt5Gui.so.5.7.0", "/usr/lib/libQt5Concurrent.so.5.7.0", "/usr/lib/libQt5Core.so.5.7.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DExtras"
    libNameForLinkerRelease: "Qt53DExtras"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DExtras.so.5.7.0"
    cpp.defines: ["QT_3DEXTRAS_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DExtras"]
    cpp.libraryPaths: []
    
}
