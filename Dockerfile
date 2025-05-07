FROM python:alpine

COPY requirements.txt /lib/python-app/requirements.txt

RUN --mount=type=cache,target=/var/cache/apk,sharing=locked \
    --mount=type=cache,target=/root/.cache/pip,sharing=locked \
    ln -s /var/cache/apk /etc/apk/cache && \
    ls -lah /var/cache/apk && \
    # Installing dependencies
    apk --update add --virtual .devcontainer-deps \
        git \
        doas \
    && \
    python -m pip install -r /lib/python-app/requirements.txt && \
    # User setup
    echo 'permit nopass :wheel' > /etc/doas.d/doas.conf && \
    adduser -D python-user -G wheel

SHELL [ "ash" ]

USER python-user

WORKDIR /home/python-user

ENTRYPOINT [ "sleep", "infinity" ]