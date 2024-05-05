# name of the target operating system
SET(CMAKE_SYSTEM_NAME Linux)
SET(CMAKE_SYSTEM_PROCESSOR armv7l)

set( GNU_MACHINE "arm-linux-gnueabihf" )

# which compilers to use for C and C++
SET(CMAKE_C_COMPILER   /usr/bin/${GNU_MACHINE}-gcc)
SET(CMAKE_CXX_COMPILER /usr/bin/${GNU_MACHINE}-g++)

# Where is the target environment
SET(CMAKE_FIND_ROOT_PATH  /usr/bin/${GNU_MACHINE})

# Search for programs in the build host directories
SET(CMAKE_FIND_ROOT_PATH_MODE_PROGRAM NEVER)

# For libraries and headers in the target directories
SET(CMAKE_FIND_ROOT_PATH_MODE_LIBRARY ONLY)
SET(CMAKE_FIND_ROOT_PATH_MODE_INCLUDE ONLY)

# Add ARM compiler flags
set( ARM_COMPILER_FLAGS "-mfpu=neon-vfpv3" )
set( CMAKE_C_FLAGS_INIT   "${ARM_COMPILER_FLAGS}" )
set( CMAKE_CXX_FLAGS_INIT "${ARM_COMPILER_FLAGS}" )