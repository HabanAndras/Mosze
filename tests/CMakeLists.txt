cmake_minimum_required(VERSION 2.6)

project(SZE-MOSZE-2020-Bukottak_bosszuja)

find_package(GTest REQUIRED)
include_directories(${GTEST_INCLUDE_DIRS})

get_filename_component(PARENT_DIR ../ ABSOLUTE)
include_directories(${PARENT_DIR})

add_executable( runTests test.cpp ${PARENT_DIR}/Hero.cpp ${PARENT_DIR}/JSON.cpp ${PARENT_DIR}/Monster.cpp ${PARENT_DIR}/Map.cpp ${PARENT_DIR}/Damage.h ${PARENT_DIR}/Game.cpp ${PARENT_DIR}/MarkedMap.cpp ${PARENT_DIR}/PreparedGame.cpp )
target_link_libraries(runTests gtest gtest_main pthread)
target_compile_features(runTests PRIVATE cxx_std_17)