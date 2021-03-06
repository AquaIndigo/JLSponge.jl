using JLSponge
using Documenter

DocMeta.setdocmeta!(JLSponge, :DocTestSetup, :(using JLSponge); recursive=true)

makedocs(;
    modules=[JLSponge],
    authors="suyaoIndigo <j.c.f.gauss@sjtu.edu.cn> and contributors",
    repo="https://github.com/AquaIndigo/JLSponge.jl/blob/{commit}{path}#{line}",
    sitename="JLSponge.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://aquaindigo.github.io/JLSponge.jl",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/AquaIndigo/JLSponge.jl",
    devbranch = "main",
)
