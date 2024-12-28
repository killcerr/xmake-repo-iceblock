package("node")
    add_urls("https://github.com/IceBlcokMC/node/releases/download/v$(version)/sdk.zip")

    add_versions("16.20.2", "b4fd8ca7236237c00e8c17288381d9336b64578f04e626f337472f95280278e6")

    add_includedirs("include/")
    add_includedirs("include/v8/")
    add_includedirs("include/uv/")
    on_install(function (package)
        os.cp("*", package:installdir())
    end)