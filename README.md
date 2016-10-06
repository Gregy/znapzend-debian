Creating ZnapZend Debian packages
===============

Install required packages:
```sh
apt install git devscripts dh-systemd
```

Build debs:

```sh
git clone https://github.com/Gregy/znapzend-debian.git
cd znapzend-debian
wget https://github.com/oetiker/znapzend/releases/download/v0.15.7/znapzend-0.15.7.tar.gz -O znapzend_0.15.7.orig.tar.gz
tar xf znapzend_0.15.7.orig.tar.gz
cp -r debian/ znapzend-0.15.7
cd znapzend-0.15.7
debuild -us -uc
```

Resulting packages are in parent directory
