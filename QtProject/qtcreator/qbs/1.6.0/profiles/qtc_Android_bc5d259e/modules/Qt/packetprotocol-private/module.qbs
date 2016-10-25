import qbs 1.0
import '../QtModule.qbs' as QtModule

QtModule {
    qtModuleName: "PacketProtocol"
    Depends { name: "Qt"; submodules: ["core-private", "qml-private"]}

    hasLibrary: true
    staticLibsDebug: []
    staticLibsRelease: ["/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Qml.so", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Network.so", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5Core.so", "gnustl_shared", "log", "z", "m", "dl", "c", "gcc"]
    dynamicLibsDebug: []
    dynamicLibsRelease: []
    linkerFlagsDebug: []
    linkerFlagsRelease: []
    frameworksDebug: []
    frameworksRelease: []
    frameworkPathsDebug: []
    frameworkPathsRelease: []
    libNameForLinkerDebug: "Qt5PacketProtocol"
    libNameForLinkerRelease: "Qt5PacketProtocol"
    libFilePathDebug: ""
    libFilePathRelease: "/home/kirill/Qt5.7.0/5.7/android_armv7/lib/libQt5PacketProtocol.a"
    cpp.defines: ["QT_PACKETPROTOCOL_LIB"]
    cpp.includePaths: ["/home/kirill/Qt5.7.0/5.7/android_armv7/include", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtPacketProtocol", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtPacketProtocol/5.7.0", "/home/kirill/Qt5.7.0/5.7/android_armv7/include/QtPacketProtocol/5.7.0/QtPacketProtocol"]
    cpp.libraryPaths: ["/opt/android/ndk/sources/cxx-stl/gnu-libstdc++/4.9/libs/armeabi-v7a", "/opt/android/ndk/platforms/android-9/arch-arm//usr/lib", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib", "/home/kirill/Qt5.7.0/5.7/android_armv7/lib"]
    isStaticLibrary: true
}
