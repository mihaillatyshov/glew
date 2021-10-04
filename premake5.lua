project "glew"
	kind "StaticLib"
	language "C"
	staticruntime "on"

	targetdir ("bin/" .. outputdir .. "/%{prj.name}")
	objdir ("bin-int/" .. outputdir .. "/%{prj.name}")

	files
	{
		"include/GL/eglew.h",
		"include/GL/glew.h",
		"include/GL/glxew.h",
		"include/GL/wglew.h",

		"src/glew.c"
	}

	defines
	{
		"GLEW_STATIC",
		"_LIB",
		"GLEW_STATIC"
	}

	includedirs
	{
		"include"
	}

	filter "system:windows"
		systemversion "latest"

		defines
		{
			"WIN32",
			"WIN32_LEAN_AND_MEAN"
		}
		
		links
		{
			"opengl32"
		}
		
	filter "configurations:Debug"
		runtime "Debug"
		symbols "on"

		defines
		{
			"_DEBUG"
		}

	filter "configurations:Release"
		runtime "Release"
		optimize "on"
	    
		defines
		{
			"NDEBUG"
		}