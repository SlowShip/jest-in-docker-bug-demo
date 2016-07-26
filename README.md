### Steps to reproduce

1. `docker build .` This will build a docker image from the file, you'll see output like:
```
Sending build context to Docker daemon 25.99 MB
Step 1 : FROM node:6.2.2
 ---> 9121f2a78909
 ...other steps...
 Step 8 : CMD npm test
 ---> Running in 8b4b1d78a2a3
 ---> c8f9fb7cd2df
Removing intermediate container 8b4b1d78a2a3
Successfully built c8f9fb7cd2df
```

2. Take the id of the image from the last step and run it:
`docker run c8f9fb7cd2df`

```
docker run c8f9fb7cd2df
npm info it worked if it ends with ok
npm info using npm@3.9.5
npm info using node@v6.2.2
npm info lifecycle jest_bug@1.0.0~pretest: jest_bug@1.0.0
npm info lifecycle jest_bug@1.0.0~test: jest_bug@1.0.0

> jest_bug@1.0.0 test /usr/src/app
> jest

Using Jest CLI v13.2.3, jasmine2
npm info lifecycle jest_bug@1.0.0~posttest: jest_bug@1.0.0
npm info ok
```

If you switch line 15 in the dockerfile for the commented out line 16, it appears to work as @ecoleman suggested, though the format isn't great. 
