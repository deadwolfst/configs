import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "Scxml"
    Depends { name: "Qt"; submodules: ["core-private", "qml-private", "scxml"]}

    hasLibrary: false
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: ""
    libNameForLinkerRelease: ""
    libFilePathDebug: ""
    libFilePathRelease: ""
    cpp.defines: []
    cpp.includePaths: ["/usr/include/qt/QtScxml/5.7.0", "/usr/include/qt/QtScxml/5.7.0/QtScxml"]
    cpp.libraryPaths: []
    
}
