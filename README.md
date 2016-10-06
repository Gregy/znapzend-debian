Creating ZnapZend Debian packages
===============


```sh
git clone git@github.com:Gregy/znapzend-debian.git .
wget https://github.com/oetiker/znapzend/releases/download/v0.15.7/znapzend-0.15.7.tar.gz -O znapzend_0.15.7.orig.tar.gz
tar xf znapzend_0.15.7.orig.tar.gz
cp -r debian/ znapzend-0.15.7
cd znapzend-0.15.7
debuild -us -uc
```

Resulting packages are in parent directory
