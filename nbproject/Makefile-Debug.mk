#
# Generated Makefile - do not edit!
#
# Edit the Makefile in the project folder instead (../Makefile). Each target
# has a -pre and a -post target defined where you can add customized code.
#
# This makefile implements configuration specific macros and targets.


# Environment
MKDIR=mkdir
CP=cp
GREP=grep
NM=nm
CCADMIN=CCadmin
RANLIB=ranlib
CC=gcc
CCC=g++
CXX=g++
FC=gfortran
AS=as

# Macros
CND_PLATFORM=MinGW-Windows
CND_DLIB_EXT=dll
CND_CONF=Debug
CND_DISTDIR=dist
CND_BUILDDIR=build

# Include project Makefile
include Makefile

# Object Directory
OBJECTDIR=${CND_BUILDDIR}/${CND_CONF}/${CND_PLATFORM}

# Object Files
OBJECTFILES= \
	${OBJECTDIR}/JNIDemo.o \
	${OBJECTDIR}/Resample.o


# C Compiler Flags
CFLAGS=-shared -m32 -Wl,--add-stdcall-alias -static-libgcc -static-libstdc++

# CC Compiler Flags
CCFLAGS=
CXXFLAGS=

# Fortran Compiler Flags
FFLAGS=

# Assembler Flags
ASFLAGS=

# Link Libraries and Options
LDLIBSOPTIONS=-L/C/Users/brett/Desktop/ffmpeg-2.4.7/libavcodec

# Build Targets
.build-conf: ${BUILD_SUBPROJECTS}
	"${MAKE}"  -f nbproject/Makefile-${CND_CONF}.mk dist/libJNIDemoCdl.dll

dist/libJNIDemoCdl.dll: ${OBJECTFILES}
	${MKDIR} -p dist
	${LINK.c} -o dist/libJNIDemoCdl.dll ${OBJECTFILES} ${LDLIBSOPTIONS} -shared

${OBJECTDIR}/JNIDemo.o: JNIDemo.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -I/C/Program\ Files\ \(x86\)/Java/jdk1.8.0_31/include -I/C/Program\ Files\ \(x86\)/Java/jdk1.8.0_31/include/win32  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/JNIDemo.o JNIDemo.c

${OBJECTDIR}/Resample.o: Resample.c 
	${MKDIR} -p ${OBJECTDIR}
	${RM} "$@.d"
	$(COMPILE.c) -g -I/C/Program\ Files\ \(x86\)/Java/jdk1.8.0_31/include -I/C/Program\ Files\ \(x86\)/Java/jdk1.8.0_31/include/win32  -MMD -MP -MF "$@.d" -o ${OBJECTDIR}/Resample.o Resample.c

# Subprojects
.build-subprojects:

# Clean Targets
.clean-conf: ${CLEAN_SUBPROJECTS}
	${RM} -r ${CND_BUILDDIR}/${CND_CONF}
	${RM} dist/libJNIDemoCdl.dll

# Subprojects
.clean-subprojects:

# Enable dependency checking
.dep.inc: .depcheck-impl

include .dep.inc
