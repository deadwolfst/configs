import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "SerialBus"
    Depends { name: "Qt"; submodules: ["core"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: []
    dynamicLibsDebug: []
    dynamicLibsRelease: ["/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Network.so", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5SerialPort.so", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Core.so"]
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5SerialBus"
    libNameForLinkerRelease: "Qt5SerialBus"
    libFilePathDebug: ""
    libFilePathRelease: "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5SerialBus.so"
    cpp.defines: ["QT_SERIALBUS_LIB"]
    cpp.includePaths: ["/home/kirill/Qt5.7.0/5.7/android_armv7/include", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtSerialBus"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.9/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib"]
    
}
