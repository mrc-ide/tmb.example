# tmb.example

R package containing [example TMB model](https://kaskr.github.io/adcomp/Introduction.html#Examples) as part of a package which can be run inside a docker container

## docker

To check docker container, build the image by running

```
./docker/build
```

Run it 

```
./docker/run
```

This should print output from `TMB::sdreport()` of the output from `TMB::MakeADFun()`
