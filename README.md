# tmb.example

R package which runs [example TMB model](https://github.com/kaskr/adcomp/blob/master/tmb_examples/ar1_4D.cpp) using runSumbolicAnalysis as part of a package which can be run inside a docker container

## docker

To check docker container, build the image by running

```
./docker/build
```

Run it 

```
./docker/run
```

This should print output from `TMB::sdreport()`.
