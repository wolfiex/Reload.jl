# Reload

[![Build Status](https://travis-ci.org/wolfiex/Reload.jl.svg?branch=master)](https://travis-ci.org/wolfiex/Reload.jl)

[![Coverage Status](https://coveralls.io/repos/wolfiex/Reload.jl/badge.svg?branch=master&service=github)](https://coveralls.io/github/wolfiex/Reload.jl?branch=master)

[![codecov.io](http://codecov.io/github/wolfiex/Reload.jl/coverage.svg?branch=master)](http://codecov.io/github/wolfiex/Reload.jl?branch=master)

A simple package that reruns the selected script upon modification. 

## Install

``` julia 
    Pkg.add("Reload")
```

## Usage

``` julia

        using Reload
             
        start("./path/to/filename.jl")
        
```
        
