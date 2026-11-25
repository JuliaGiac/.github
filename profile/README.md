<p align="center">
  <picture>
    <source media="(prefers-color-scheme: dark)" srcset="https://raw.githubusercontent.com/JuliaGiac/site-kit/main/brand/assets/juliagiac-mark-light.svg">
    <img src="https://raw.githubusercontent.com/JuliaGiac/site-kit/main/brand/assets/juliagiac-mark.svg" alt="JuliaGiac" width="140">
  </picture>
</p>

# JuliaGiac

JuliaGiac brings [Giac](https://www-fourier.univ-grenoble-alpes.fr/~parisse/giac.html),
the computer algebra system by Bernard Parisse and Renée De Graeve (Institut
Fourier, Université Grenoble Alpes), to [Julia](https://julialang.org/).

```julia
using Pkg; Pkg.add("Giac")
```

The project is a stack of layers, from the upstream C++ sources to the Julia
packages:

| # | Layer | Role |
|---|-------|------|
| 1 | [Giac/Xcas](https://www-fourier.univ-grenoble-alpes.fr/~parisse/giac.html) | Upstream computer algebra system (GPL-3.0) |
| 2 | [giac](https://github.com/JuliaGiac/giac/tree/dev) | Giac sources with a Meson build, for cross-compilation |
| 3 | [GIAC_jll](https://github.com/JuliaBinaryWrappers/GIAC_jll.jl) | Pre-built libgiac binaries ([recipe](https://github.com/JuliaPackaging/Yggdrasil/tree/master/G/GIAC)) |
| 4 | [libgiac-julia-wrapper](https://github.com/JuliaGiac/libgiac-julia-wrapper) | C++ bridge to Julia through CxxWrap.jl, shipped as [libgiac_julia_jll](https://github.com/JuliaBinaryWrappers/libgiac_julia_jll.jl) |
| 5 | [Giac.jl](https://github.com/JuliaGiac/Giac.jl) | The Julia package ([documentation](https://juliagiac.github.io/Giac.jl/)) |
| 6 | [GiacSlate.jl](https://github.com/JuliaGiac/GiacSlate.jl) | Integration of Giac.jl with KaimonSlate |

More on each layer at <https://juliagiac.github.io/>. Questions about Giac
itself belong on the [Xcas forum](https://xcas.univ-grenoble-alpes.fr/forum/).
