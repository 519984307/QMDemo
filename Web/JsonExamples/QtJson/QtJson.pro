#---------------------------------------------------------------------------------------
# @功能：       使用内置json库读写json示例
#              1、实现生成json数据，插入json数组、json对象以及各种json支持的数据类型；
#              2、将json数据保存到json文件中；
#              3、从json文件中读取json数据，并使用【递归】的方式解析json数据。
# @编译器：     Desktop Qt 5.12.5 MSVC2017 64bit（也支持其它编译器）
# @Qt IDE：    D:/Qt/Qt5.12.5/Tools/QtCreator/share/qtcreator
#
# @开发者     mhf
# @邮箱       1603291350@qq.com
# @时间       2022-12-12 22:49:26
# @备注
#---------------------------------------------------------------------------------------
QT       += core gui

greaterThan(QT_MAJOR_VERSION, 4): QT += widgets
CONFIG += c++11
DEFINES += QT_DEPRECATED_WARNINGS
SOURCES += \
    main.cpp \
    widget.cpp

HEADERS += \
    widget.h

FORMS += \
    widget.ui

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

#  定义程序版本号
VERSION = 1.0.0
DEFINES += APP_VERSION=\\\"$$VERSION\\\"

contains(QT_ARCH, i386){            # 使用32位编译器
    DESTDIR = $$PWD/../bin          # 程序输出路径
}else{
    DESTDIR = $$PWD/../bin64        # 使用64位编译器
}


# msvc  编译器使用utf-8编码
msvc {
QMAKE_CFLAGS += /utf-8
QMAKE_CXXFLAGS += /utf-8
}
