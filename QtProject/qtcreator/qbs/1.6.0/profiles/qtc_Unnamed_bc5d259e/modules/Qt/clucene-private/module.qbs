import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "CLucene"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/usr/lib/libQt5Core.so.5.7.0", "pthread"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5CLucene"
    libNameForLinkerRelease: "Qt5CLucene"
    libFilePathDebug: ""
    libFilePathRelease: "/usr/lib/libQt5CLucene.so.5.7.0"
    cpp.defines: ["QT_CLUCENE_LIB"]
    cpp.includePaths: ["/usr/include/qt", "/usr/include/qt/QtCLucene", "/usr/include/qt/QtCLucene/5.7.0", "/usr/include/qt/QtCLucene/5.7.0/QtCLucene"]
    cpp.libraryPaths: []
    
}
