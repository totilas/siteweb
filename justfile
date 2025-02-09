build:
    tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js
    zola build

serve: build
    zola serve



deploy: build
    read -sp "Password: " FTPPASS && echo
    cd public && find . -type f -exec curl --ssl-reqd -T {} ftps://perso.ens-lyon.fr/{} --user "ecyffers:$FTPPASS" \;
    git tag "$(date '+%Y-%m-%d--%H-%M-%S')"
