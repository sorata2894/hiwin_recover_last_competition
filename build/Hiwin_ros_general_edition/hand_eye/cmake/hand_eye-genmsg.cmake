# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "hand_eye: 0 messages, 4 services")

set(MSG_I_FLAGS "-Istd_msgs:C:/opt/ros/melodic/x64/share/std_msgs/cmake/../msg;-Igeometry_msgs:C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(hand_eye_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv" NAME_WE)
add_custom_target(_hand_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_eye" "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv" ""
)

get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv" NAME_WE)
add_custom_target(_hand_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_eye" "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv" "geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Transform"
)

get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv" NAME_WE)
add_custom_target(_hand_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_eye" "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv" ""
)

get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv" NAME_WE)
add_custom_target(_hand_eye_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "hand_eye" "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages

### Generating Services
_generate_srv_cpp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_eye
)
_generate_srv_cpp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv"
  "${MSG_I_FLAGS}"
  "C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Quaternion.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Vector3.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_eye
)
_generate_srv_cpp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_eye
)
_generate_srv_cpp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_eye
)

### Generating Module File
_generate_module_cpp(hand_eye
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_eye
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(hand_eye_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(hand_eye_generate_messages hand_eye_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_cpp _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_cpp _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_cpp _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_cpp _hand_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_eye_gencpp)
add_dependencies(hand_eye_gencpp hand_eye_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_eye_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages

### Generating Services
_generate_srv_eus(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_eye
)
_generate_srv_eus(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv"
  "${MSG_I_FLAGS}"
  "C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Quaternion.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Vector3.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_eye
)
_generate_srv_eus(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_eye
)
_generate_srv_eus(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_eye
)

### Generating Module File
_generate_module_eus(hand_eye
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_eye
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(hand_eye_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(hand_eye_generate_messages hand_eye_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_eus _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_eus _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_eus _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_eus _hand_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_eye_geneus)
add_dependencies(hand_eye_geneus hand_eye_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_eye_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages

### Generating Services
_generate_srv_lisp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_eye
)
_generate_srv_lisp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv"
  "${MSG_I_FLAGS}"
  "C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Quaternion.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Vector3.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_eye
)
_generate_srv_lisp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_eye
)
_generate_srv_lisp(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_eye
)

### Generating Module File
_generate_module_lisp(hand_eye
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_eye
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(hand_eye_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(hand_eye_generate_messages hand_eye_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_lisp _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_lisp _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_lisp _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_lisp _hand_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_eye_genlisp)
add_dependencies(hand_eye_genlisp hand_eye_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_eye_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages

### Generating Services
_generate_srv_nodejs(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_eye
)
_generate_srv_nodejs(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv"
  "${MSG_I_FLAGS}"
  "C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Quaternion.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Vector3.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_eye
)
_generate_srv_nodejs(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_eye
)
_generate_srv_nodejs(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_eye
)

### Generating Module File
_generate_module_nodejs(hand_eye
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_eye
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(hand_eye_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(hand_eye_generate_messages hand_eye_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_nodejs _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_nodejs _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_nodejs _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_nodejs _hand_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_eye_gennodejs)
add_dependencies(hand_eye_gennodejs hand_eye_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_eye_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages

### Generating Services
_generate_srv_py(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye
)
_generate_srv_py(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv"
  "${MSG_I_FLAGS}"
  "C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Quaternion.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Vector3.msg;C:/opt/ros/melodic/x64/share/geometry_msgs/cmake/../msg/Transform.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye
)
_generate_srv_py(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye
)
_generate_srv_py(hand_eye
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye
)

### Generating Module File
_generate_module_py(hand_eye
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(hand_eye_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(hand_eye_generate_messages hand_eye_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/save_pcd.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_py _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/hand_eye_calibration.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_py _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/aruco_info.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_py _hand_eye_generate_messages_check_deps_${_filename})
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/hand_eye/srv/eye2base.srv" NAME_WE)
add_dependencies(hand_eye_generate_messages_py _hand_eye_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(hand_eye_genpy)
add_dependencies(hand_eye_genpy hand_eye_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS hand_eye_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/hand_eye
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(hand_eye_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(hand_eye_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/hand_eye
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(hand_eye_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(hand_eye_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/hand_eye
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(hand_eye_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(hand_eye_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_eye)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/hand_eye
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(hand_eye_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(hand_eye_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye)
  install(CODE "execute_process(COMMAND \"C:/opt/ros/melodic/x64/python.exe\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/hand_eye
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(hand_eye_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(hand_eye_generate_messages_py geometry_msgs_generate_messages_py)
endif()
