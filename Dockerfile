FROM python:3.10.12

# This Dockerfile Created By Mr. Ankush Yadav.  Github.com/Mswpresents
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends \
    gcc \
    libffi-dev \
    musl-dev \
    ffmpeg \
    aria2 \
    && rm -rf /var/lib/apt/lists/*

# This Dockerfile Created By Mr. Ankush Yadav.  Github.com/Mswpresents
WORKDIR /app

# This Dockerfile Created By Mr. Ankush Yadav.  Github.com/Mswpresents
COPY . .

# This Dockerfile Created By Mr. Ankush Yadav.  Github.com/Mswpresents
RUN pip3 install --no-cache-dir --upgrade --requirement Installer

# This Dockerfile Created By Mr. Ankush Yadav.  Github.com/Mswpresents
CMD sh -c "flask run -h 0.0.0.0 -p 8000 & python3 modules/main.py"
