# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "metal_line_follower: 5 messages, 0 services")

set(MSG_I_FLAGS "-Imetal_line_follower:/home/farhan/catkin_ws/src/metal_line_follower/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(metal_line_follower_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg" NAME_WE)
add_custom_target(_metal_line_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metal_line_follower" "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg" ""
)

get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg" NAME_WE)
add_custom_target(_metal_line_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metal_line_follower" "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg" ""
)

get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg" NAME_WE)
add_custom_target(_metal_line_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metal_line_follower" "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg" ""
)

get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg" NAME_WE)
add_custom_target(_metal_line_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metal_line_follower" "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg" ""
)

get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg" NAME_WE)
add_custom_target(_metal_line_follower_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "metal_line_follower" "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg" ""
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_cpp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_cpp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_cpp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_cpp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower
)

### Generating Services

### Generating Module File
_generate_module_cpp(metal_line_follower
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(metal_line_follower_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(metal_line_follower_generate_messages metal_line_follower_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_cpp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_cpp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_cpp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_cpp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_cpp _metal_line_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metal_line_follower_gencpp)
add_dependencies(metal_line_follower_gencpp metal_line_follower_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metal_line_follower_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower
)
_generate_msg_eus(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower
)
_generate_msg_eus(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower
)
_generate_msg_eus(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower
)
_generate_msg_eus(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower
)

### Generating Services

### Generating Module File
_generate_module_eus(metal_line_follower
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(metal_line_follower_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(metal_line_follower_generate_messages metal_line_follower_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_eus _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_eus _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_eus _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_eus _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_eus _metal_line_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metal_line_follower_geneus)
add_dependencies(metal_line_follower_geneus metal_line_follower_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metal_line_follower_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_lisp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_lisp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_lisp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower
)
_generate_msg_lisp(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower
)

### Generating Services

### Generating Module File
_generate_module_lisp(metal_line_follower
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(metal_line_follower_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(metal_line_follower_generate_messages metal_line_follower_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_lisp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_lisp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_lisp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_lisp _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_lisp _metal_line_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metal_line_follower_genlisp)
add_dependencies(metal_line_follower_genlisp metal_line_follower_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metal_line_follower_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower
)
_generate_msg_nodejs(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower
)
_generate_msg_nodejs(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower
)
_generate_msg_nodejs(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower
)
_generate_msg_nodejs(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower
)

### Generating Services

### Generating Module File
_generate_module_nodejs(metal_line_follower
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(metal_line_follower_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(metal_line_follower_generate_messages metal_line_follower_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_nodejs _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_nodejs _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_nodejs _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_nodejs _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_nodejs _metal_line_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metal_line_follower_gennodejs)
add_dependencies(metal_line_follower_gennodejs metal_line_follower_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metal_line_follower_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower
)
_generate_msg_py(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower
)
_generate_msg_py(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower
)
_generate_msg_py(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower
)
_generate_msg_py(metal_line_follower
  "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower
)

### Generating Services

### Generating Module File
_generate_module_py(metal_line_follower
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(metal_line_follower_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(metal_line_follower_generate_messages metal_line_follower_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/rfidMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_py _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/proximityMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_py _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/sensorValMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_py _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/myCustom.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_py _metal_line_follower_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/farhan/catkin_ws/src/metal_line_follower/msg/ultrasonicMsg.msg" NAME_WE)
add_dependencies(metal_line_follower_generate_messages_py _metal_line_follower_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(metal_line_follower_genpy)
add_dependencies(metal_line_follower_genpy metal_line_follower_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS metal_line_follower_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/metal_line_follower
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(metal_line_follower_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/metal_line_follower
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(metal_line_follower_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/metal_line_follower
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(metal_line_follower_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/metal_line_follower
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(metal_line_follower_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/metal_line_follower
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(metal_line_follower_generate_messages_py std_msgs_generate_messages_py)
endif()
