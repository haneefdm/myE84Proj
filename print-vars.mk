.PHONY: print-all-vars

print-all-vars:
	$(foreach v, $(.VARIABLES), $(info $v))

.PHONY: print-include-vars

print-include-vars:
	echo INCLUDE_DIRS= $(.INCLUDE_DIRS)
	echo INCLUDES= $(INCLUDES)
	echo MTB_RECIPE__INCLUDES= $(MTB_RECIPE__INCLUDES)
	echo _MTB_TOOLS__INCLUDE_GETLIBS= $(_MTB_TOOLS__INCLUDE_GETLIBS)
	echo CFLAGS= $(CFLAGS)
	echo CXXFLAGS= $(CXXFLAGS)
	echo MTB_RECIPE__INCLUDES= $(MTB_RECIPE__INCLUDES)
