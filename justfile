build:
    tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js
    zola build

serve: build
    zola serve


deploy-ftp:
    #!/usr/bin/env -S lftp --verbose -f

    # Set connection parameters
    set ssl:verify-certificate no
    set ftp:ssl-force true
    set ftp:ssl-protect-data true
    set ftp:ssl-auth TLS

    # Connect to server
    open -p 990 -u ecyffers perso.ens-lyon.fr

    # Upload commands
    mirror -R public/ /

    # Exit
    exit

deploy: build deploy-ftp
    git tag "$(date '+%Y-%m-%d--%H-%M-%S')"
