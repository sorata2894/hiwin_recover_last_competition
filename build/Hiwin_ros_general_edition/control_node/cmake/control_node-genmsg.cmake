# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "control_node: 1 messages, 0 services")

set(MSG_I_FLAGS "-Icontrol_node:C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg;-Istd_msgs:C:/opt/ros/melodic/x64/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(control_node_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg" NAME_WE)
add_custom_target(_control_node_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "control_node" "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(control_node
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_node
)

### Generating Services

### Generating Module File
_generate_module_cpp(control_node
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_node
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(control_node_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(control_node_generate_messages control_node_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg" NAME_WE)
add_dependencies(control_node_generate_messages_cpp _control_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_node_gencpp)
add_dependencies(control_node_gencpp control_node_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_node_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(control_node
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_node
)

### Generating Services

### Generating Module File
_generate_module_eus(control_node
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_node
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(control_node_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(control_node_generate_messages control_node_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg" NAME_WE)
add_dependencies(control_node_generate_messages_eus _control_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_node_geneus)
add_dependencies(control_node_geneus control_node_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_node_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(control_node
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_node
)

### Generating Services

### Generating Module File
_generate_module_lisp(control_node
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_node
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(control_node_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(control_node_generate_messages control_node_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg" NAME_WE)
add_dependencies(control_node_generate_messages_lisp _control_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_node_genlisp)
add_dependencies(control_node_genlisp control_node_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_node_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(control_node
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_node
)

### Generating Services

### Generating Module File
_generate_module_nodejs(control_node
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_node
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(control_node_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(control_node_generate_messages control_node_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg" NAME_WE)
add_dependencies(control_node_generate_messages_nodejs _control_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_node_gennodejs)
add_dependencies(control_node_gennodejs control_node_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_node_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(control_node
  "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_node
)

### Generating Services

### Generating Module File
_generate_module_py(control_node
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_node
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(control_node_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(control_node_generate_messages control_node_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "C:/hiwin_general_ws/src/Hiwin_ros_general_edition/control_node/msg/robot_info.msg" NAME_WE)
add_dependencies(control_node_generate_messages_py _control_node_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(control_node_genpy)
add_dependencies(control_node_genpy control_node_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS control_node_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/control_node
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(control_node_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/control_node
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(control_node_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/control_node
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(control_node_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_node)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/control_node
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(control_node_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_node)
  install(CODE "execute_process(COMMAND \"C:/opt/ros/melodic/x64/python.exe\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_node\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_node
    DESTINATION ${genpy_INSTALL_DIR}
    # skip all init files
    PATTERN "__init__.py" EXCLUDE
    PATTERN "__init__.pyc" EXCLUDE
  )
  # install init files which are not in the root folder of the generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_node
    DESTINATION ${genpy_INSTALL_DIR}
    FILES_MATCHING
    REGEX "${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/control_node/.+/__init__.pyc?$"
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(control_node_generate_messages_py std_msgs_generate_messages_py)
endif()
