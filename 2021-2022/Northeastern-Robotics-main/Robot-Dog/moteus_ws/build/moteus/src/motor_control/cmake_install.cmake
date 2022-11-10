# Install script for directory: /home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/src/moteus/src/motor_control

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moteus/msg" TYPE FILE FILES
    "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/src/moteus/src/motor_control/msg/CAN.msg"
    "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/src/moteus/src/motor_control/msg/Motor.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/build/moteus/src/motor_control/catkin_generated/installspace/moteus.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moteus/cmake" TYPE FILE FILES
    "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/build/moteus/src/motor_control/catkin_generated/installspace/moteusConfig.cmake"
    "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/build/moteus/src/motor_control/catkin_generated/installspace/moteusConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/moteus" TYPE FILE FILES "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/src/moteus/src/motor_control/package.xml")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/moteus" TYPE PROGRAM FILES "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/build/moteus/src/motor_control/catkin_generated/installspace/motor_controller.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/moteus" TYPE PROGRAM FILES "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/build/moteus/src/motor_control/catkin_generated/installspace/motor_publisher.py")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/moteus" TYPE PROGRAM FILES "/home/da/Robot-Dog/2021-2022/Northeastern-Robotics-main/Robot-Dog/moteus_ws/build/moteus/src/motor_control/catkin_generated/installspace/Moteus.py")
endif()

