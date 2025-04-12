build:
    tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js
    zola build

serve: build
    zola serve


deploy-ftp:
    #!/usr/bin/env -S lftp -d -f

    # Set connection parameters for SFTP
    set sftp:auto-confirm yes

    # Connect to server using SFTP on port 22
    open -u ecyffers sftp://perso.ens-lyon.fr:22

    # Upload commands - mirror local public/ directory to remote root
    mirror -R public/ /

    # Exit
    exit


deploy: build deploy-ftp
    git tag "$(date '+%Y-%m-%d--%H-%M-%S')"
