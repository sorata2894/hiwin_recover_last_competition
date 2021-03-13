execute_process(COMMAND "C:/hiwin_general_ws/build/Hiwin_ros_general_edition/control_node/catkin_generated/python_distutils_install.bat" RESULT_VARIABLE res)

if(NOT res EQUAL 0)
  message(FATAL_ERROR "execute_process(C:/hiwin_general_ws/build/Hiwin_ros_general_edition/control_node/catkin_generated/python_distutils_install.bat) returned error code ")
endif()
