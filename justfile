# JuliaGiac organisation files.

# List recipes
default:
    @just --list

# Regenerate the visual identity into brand/assets/
brand:
    julia --project=brand -e 'using Pkg; Pkg.instantiate()'
    julia --project=brand brand/make_brand.jl
