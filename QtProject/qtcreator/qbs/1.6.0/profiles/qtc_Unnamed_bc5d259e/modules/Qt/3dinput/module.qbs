import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DInput"
    Depends { name: "Qt"; submodules: ["core", "gui", "3dcore"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt53DCore.so.5.7.0", "/usr/lib/libQt5Gui.so.5.7.0", "/usr/lib/libQt5Core.so.5.7.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt53DInput"
    libNameForLinkerRelease: "Qt53DInput"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt53DInput.so.5.7.0"
    cpp.defines: ["QT_3DINPUT_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/Qt3DInput"]
    cpp.libraryPaths: []
    
}
