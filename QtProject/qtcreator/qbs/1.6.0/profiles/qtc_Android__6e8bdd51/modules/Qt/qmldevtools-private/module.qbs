import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDevTools"
    Depends { name: "Qt"; submodules: ["bootstrap-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Bootstrap.a", "pthread"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QmlDevTools"
    libNameForLinkerRelease: "Qt5QmlDevTools"
    libFilePathDebug: ""
    libFilePathRelease: "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5QmlDevTools.a"
    cpp.defines: ["QT_QMLDEVTOOLS_LIB"]
    cpp.includePaths: ["/home/kirill/Qt5.7.0/5.7/android_armv7/include", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtQmlDevTools", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtQmlDevTools/5.7.0", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtQmlDevTools/5.7.0/QtQmlDevTools"]
    cpp.libraryPaths: ["/home/kirill/Qt5.7.0/5.7/android_armv7/lib"]
    isStaticLibrary: true
}
