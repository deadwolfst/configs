import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "AndroidExtras"
    Depends { name: "Qt"; submodules: ["core-private", "androidextras"]}

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
    cpp.includePaths: ["/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtAndroidExtras/5.7.0", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtAndroidExtras/5.7.0/QtAndroidExtras"]
    cpp.libraryPaths: []
    
}
