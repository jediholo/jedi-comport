# phpBB 3.3 base image
FROM ghcr.io/fab-infra/phpbb:3.3-opensuse15

# Download and extract extensions
RUN for PHPBB_EXT in 184661 204724 206731; do \
        curl -sSLf -o "/tmp/phbb_ext.zip" "https://www.phpbb.com/customise/db/download/${PHPBB_EXT}" &&\
        unzip "/tmp/phbb_ext.zip" -d ext &&\
        rm -f "/tmp/phbb_ext.zip"; \
    done &&\
    chown -R wwwrun:www ext

# Environment
ENV PHPBB_EXTENSIONS="phpbb/boardannouncements,alfredoramos/seometadata,alfredoramos/simplespoiler"

# Files
COPY --chown=wwwrun:www ./styles styles
