Testing ZnapZend Debian packages
===============

You can download prebuilt package from 'releases' section of this repository. Please report back with problems.


Creating ZnapZend Debian packages
===============

Install required packages:
```sh
apt install git debhelper devscripts unzip build-essential
```

Build debs:

```sh
git clone https://github.com/Gregy/znapzend-debian.git
cd znapzend-debian
git clone -b v0.21.0 https://github.com/oetiker/znapzend
cp -r debian/ znapzend
cd znapzend
debuild --no-tgz-check -us -uc
```

Resulting packages are in parent directory
```sh
cd ..
```

Build debs with docker:

```sh
./build.sh
```

Install:
```sh
apt install ./znapzend_*.deb
```
