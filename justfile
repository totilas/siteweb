build:
    tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js
    zola build

serve: build
    zola serve



deploy: build
    git add .
    git commit
    rsync -avzn --progress public/ ecyffers@perso.ens-lyon.fr:/home/ecyffers/public_html/
    git tag "$(date '+%Y-%m-%d--%H-%M-%S')"
