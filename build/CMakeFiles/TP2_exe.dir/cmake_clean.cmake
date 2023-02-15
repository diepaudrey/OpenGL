file(REMOVE_RECURSE
  "../bin/Debug/TP2_exe"
  "../bin/Debug/TP2_exe.pdb"
  "DUMMY_assets/models/cornell_box.mtl_TP3_exo1_exe"
  "DUMMY_assets/models/cornell_box.obj_TP3_exo1_exe"
  "DUMMY_assets/models/cube.mtl_TP3_exo1_exe"
  "DUMMY_assets/models/cube.obj_TP3_exo1_exe"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/TP2_exe.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
