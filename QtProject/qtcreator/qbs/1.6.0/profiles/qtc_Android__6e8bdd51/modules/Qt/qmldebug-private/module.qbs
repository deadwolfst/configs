import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "QmlDebug"
    Depends { name: "Qt"; submodules: ["core-private", "network", "packetprotocol-private", "qml-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5PacketProtocol.a", "gnustl_shared", "log", "z", "m", "dl", "c", "gcc", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Qml.so", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Network.so", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Core.so", "gnustl_shared", "log", "z", "m", "dl", "c", "gcc"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5QmlDebug"
    libNameForLinkerRelease: "Qt5QmlDebug"
    libFilePathDebug: ""
    libFilePathRelease: "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5QmlDebug.a"
    cpp.defines: ["QT_QMLDEBUG_LIB"]
    cpp.includePaths: ["/home/kirill/Qt5.7.0/5.7/android_armv7/include", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtQmlDebug", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtQmlDebug/5.7.0", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtQmlDebug/5.7.0/QtQmlDebug"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.9/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib"]
    isStaticLibrary: true
}
