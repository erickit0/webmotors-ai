#!/usr/bin/env bash

echo "Limpando cache do apt e atualizando pacotes..."
# Tente limpar o cache antes de atualizar
apt-get clean
rm -rf /var/lib/apt/lists/*
apt-get update --fix-missing

# Instalar dependências do sistema...
apt-get install -y \
    build-essential \
    zlib1g-dev \
    libjpeg-dev \
    libpng-dev \
    libtiff-dev \
    libfreetype6-dev \
    liblcms2-dev \
    libwebp-dev \
    tcl \
    tk \
    python3-tk \
    pkg-config

echo "Instalando dependências Python do requirements.txt..."
pip install -r requirements.txt

echo "Build command concluído."
