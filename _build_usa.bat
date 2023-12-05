"%~dp0dependencies\wit\wit" extract "%~dp0_build\SZBE69.wbfs" "%~dp0_build\RB3_Extracted\"
if not exist "%~dp0_build\vanilla_arks\" (
   md "%~dp0_build\vanilla_arks\"
   xcopy "%~dp0_build\RB3_Extracted\files\gen\" "%~dp0_build\vanilla_arks\"
)
"%~dp0dependencies\arkhelper" patchcreator -a "%~dp0\_ark" -o "%~dp0_build\RB3_Extracted\files" "%~dp0_build\vanilla_arks\main_wii.hdr"
"%~dp0dependencies\wit\wit" copy "_build\RB3_Extracted" "RB3DX.wbfs"
