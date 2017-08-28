message(STATUS "Loading tests-tlib module...")

if (NOT CONFIGURED_ONCE)
	set(APP_TESTS_TLIB_SOURCE_DIR ${APP_TESTS_TLIB_DIR}/src)
endif()

add_executable(aurorafw_app_tests_string ${APP_TESTS_TLIB_SOURCE_DIR}/test_string.cpp)

target_link_libraries(aurorafw_app_tests_string aurorafw-core aurorafw-tlib aurorafw-cli)

set_target_properties(aurorafw_app_tests_string PROPERTIES OUTPUT_NAME test_string.out)
