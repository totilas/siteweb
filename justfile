build:
    tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js
    zola build

serve: build
    zola serve



deploy: build
    lftp -p 990 -u ecyffers -e "
    # Set explicit FTPES (FTP over explicit TLS/SSL)
    set ftp:ssl-force true
    set ftp:ssl-protect-data true
    set ftp:ssl-auth TLS
    set ssl:verify-certificate no
    # Upload the public directory
    mirror -R public/ /
    # Exit after transfer
    exit" perso.ens-lyon.fr

    git tag "$(date '+%Y-%m-%d--%H-%M-%S')"
