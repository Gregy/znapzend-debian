Testing ZnapZend Debian packages
===============

You can download prebuilt package from 'releases' section of this repository. Please report back with problems.


Creating ZnapZend Debian packages
===============

You can either run the build manually or use a docker based build script

## Manual package creation
Install required packages:
```sh
apt install git debhelper devscripts unzip build-essential
```

Build debs:

```sh
git clone https://github.com/Gregy/znapzend-debian.git
cd znapzend-debian
git clone -b v0.21.1 https://github.com/oetiker/znapzend
cp -r debian/ znapzend
cd znapzend
debuild --no-tgz-check -us -uc
```

Resulting packages are in parent directory
```sh
cd ..
```



## Scripted package creation

Convinient build script utilizing a docker container is present in the repo. Run it like this:

```sh
./build.sh
```

Installing ZnapZend Debian packages
===============

```sh
apt install ./znapzend_*.deb
```
