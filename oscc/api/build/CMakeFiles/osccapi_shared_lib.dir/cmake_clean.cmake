FILE(REMOVE_RECURSE
  "libosccapi.pdb"
  "libosccapi.so"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/osccapi_shared_lib.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
