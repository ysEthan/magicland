FROM python:3.11

WORKDIR /app

RUN python -m pip install --upgrade pip
# 替换为国内源
RUN mkdir -p ~/.pip \
    && echo "[global]" > ~/.pip/pip.conf \
    && echo "index-url=https://mirrors.aliyun.com/pypi/simple" >> ~/.pip/pip.conf \
    && echo "trusted-host=mirrors.aliyun.com" >> ~/.pip/pip.conf


# optimizing the docker caching behaviour
COPY requirements.txt .
RUN python -m pip install --no-cache-dir -r requirements.txt
COPY . .
# RUN python manage.py runserver 127.0.0.1:80


# RUN python manage.py collectstatic --noinput
# CMD  python manage.py runserver 127.0.0.1:8001


