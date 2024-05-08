project "yaml-cpp"
  kind "StaticLib"
  language "C++"

  targetdir("bin/" .. outputdir .. "/%{prj.name}")
  targetdir("bin-int/" .. outputdir .. "/%{prj.name}")

  files
  {
    "src/**.h",
    "src/**.cpp",
    "include/**.h"
  }

  includedirs
  {
    "include"
  }

  filter "system:windows"
      pic "On"
      systemversion "latest"
      cppdialect "C++20"
      staticruntime "On"

   filter "system:macosx"
      pic "On"
      systemversion "11.0"
      cppdialect "C++20"
      staticruntime "On"

  filter "system:linux"
      pic "On"
      systemversion "latest"
      cppdialect "C++20"
      staticruntime "On"

  filter "configurations:Debug"
      runtime "Debug"
      symbols "on"

  filter "configurations:Release"
      runtime "Release"
      optimize "on"

    
  
