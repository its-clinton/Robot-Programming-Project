cmake_minimum_required(VERSION 3.0.2)
project(option3_package)

## Find catkin macros and libraries
find_package(catkin REQUIRED COMPONENTS
  roscpp
  std_msgs
  message_generation  # Add message_generation to support services
)

################################################
## Declare ROS messages, services and actions ##
################################################

## Declare the service files to be built
add_service_files(
  FILES
  CustomService.srv  # Add your CustomService.srv here
)

## Generate added messages and services
generate_messages(
  DEPENDENCIES
  std_msgs  # Add dependencies (e.g., std_msgs)
)

###################################
## catkin specific configuration ##
###################################
catkin_package(
  CATKIN_DEPENDS roscpp std_msgs message_runtime  # Include message_runtime for services
)

###########
## Build ##
###########

## Specify additional locations of header files
include_directories(
  ${catkin_INCLUDE_DIRS}
)

## Declare C++ executables
add_executable(talker src/talker.cpp)
add_executable(listener src/listener.cpp)
add_executable(youtuber_1 src/youtuber_1.cpp)
add_executable(youtuber_2 src/youtuber_2.cpp)
add_executable(youtuber_3 src/youtuber_3.cpp)
add_executable(audience_1 src/audience_1.cpp)
add_executable(audience_2 src/audience_2.cpp)
add_executable(service_server src/server.cpp)
add_executable(service_client src/client.cpp)

## Link libraries to the executables
target_link_libraries(talker ${catkin_LIBRARIES})
target_link_libraries(listener ${catkin_LIBRARIES})
target_link_libraries(youtuber_1 ${catkin_LIBRARIES})
target_link_libraries(youtuber_2 ${catkin_LIBRARIES})
target_link_libraries(youtuber_3 ${catkin_LIBRARIES})
target_link_libraries(audience_1 ${catkin_LIBRARIES})
target_link_libraries(audience_2 ${catkin_LIBRARIES})
target_link_libraries(service_server ${catkin_LIBRARIES})
target_link_libraries(service_client ${catkin_LIBRARIES})

## Ensure message dependencies are generated before the executables
add_dependencies(service_server ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})
add_dependencies(service_client ${${PROJECT_NAME}_EXPORTED_TARGETS} ${catkin_EXPORTED_TARGETS})

