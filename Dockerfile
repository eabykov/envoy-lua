FROM envoyproxy/envoy:v1.30-latest

RUN apt update && apt install -y lua-cjson libmaxminddb-dev curl \
    && rm -rf /var/lib/apt/lists/* \
    && ln -s /usr/lib/x86_64-linux-gnu/lua /usr/local/lib/lua \
    && ln -s /usr/share/lua /usr/local/share/lua \
    && curl -L https://github.com/leafo/luajit-geoip/archive/refs/tags/v2.1.0.tar.gz | tar -xz \
    && mv luajit-geoip-2.1.0/geoip /usr/share/lua/5.1/geoip && rm -rf luajit-geoip-2.1.0
