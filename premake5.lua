project "Yaml"
kind "StaticLib"
language "C++"
staticruntime "On"

targetdir ("bin/" .. outputdir .. "/%{prj.name}")
objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

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

defines
{
    "YAML_CPP_STATIC_DEFINE"
}

filter "system:windows"
    systemversion "latest"

filter "configurations:Debug"
    runtime "Debug"
    symbols "On"

filter "configurations:Release"
    runtime "Release"
    optimize "On"