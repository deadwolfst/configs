import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "3DExtras"
    Depends { name: "Qt"; submodules: ["core-private", "3dcore-private", "3drender-private", "3dextras"]}

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
    cpp.includePaths: ["/home/kirill/Qt5.7.0/5.7/android_armv7/include/Qt3DExtras/5.7.0", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/Qt3DExtras/5.7.0/Qt3DExtras"]
    cpp.libraryPaths: []
    
}
