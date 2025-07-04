#!/usr/bin/env bash

# Instalar dependências do sistema necessárias para Pillow e outras bibliotecas
# que compilam extensões C
echo "Atualizando pacotes e instalando dependências do sistema..."
apt-get update && apt-get install -y \
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

# Agora instalar as dependências Python
echo "Instalando dependências Python do requirements.txt..."
pip install -r requirements.txt

echo "Build command concluído."
