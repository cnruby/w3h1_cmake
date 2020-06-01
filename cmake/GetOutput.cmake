#
file(
  GENERATE OUTPUT ${PROJECT_SOURCE_DIR}/expression.md
  CONTENT "# Generator Expressions Result:
1. $<BOOL:100>
1. $<BOOL:>
1. $<TARGET_OBJECTS:${LIB_NAME}_o>
1. $<TARGET_PROPERTY:${LIB_NAME}_o,INCLUDE_DIRECTORIES>
"
)
#