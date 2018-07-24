FILE(REMOVE_RECURSE
  "libosccapi.pdb"
  "libosccapi.a"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/osccapi_static_lib.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
