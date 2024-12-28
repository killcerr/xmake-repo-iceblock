package("endstone")
    set_kind("library", {headeronly = true})
    set_homepage("https://github.com/EndstoneMC/endstone")
    set_description("Endstone - High-level Plugin API for Bedrock Dedicated Servers (BDS), in both Python and C++")
    set_license("Apache-2.0")

    add_urls("https://github.com/EndstoneMC/endstone/archive/refs/tags/v$(version).tar.gz","https://github.com/EndstoneMC/endstone.git")
    add_versions("0.5.6","2a991d4009025a10c4469f160a15ad40594f82ebd08dab510ea0f42d61b7c8dd")
    add_patches("0.5.6", "https://raw.githubusercontent.com/engsr6982/Js_Engine/refs/heads/develop/patch/cxx20.patch",
                        "547ae3d325b8deb68747179b6bc3aa8772ba4efe36263bf31f34be7a3aac2ceb")
    if (is_plat("linux")) then 
        add_patches("0.5.6", "https://raw.githubusercontent.com/engsr6982/Js_Engine/refs/heads/develop/patch/linux.patch",
                        "1e7c6a961abf821803b42dcd43d1c88524caa8012e333b9e47ec6faa00037c74")   
    end

    on_install("windows", "linux", function (package)
        os.cp("include", package:installdir())
    end)
