build:
    tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js
    zola build

serve:
    #!/usr/bin/env bash
    exec bash -c '
        set -m;
        trap "kill 0" SIGINT SIGTERM;
        (stdbuf -oL tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js --watch 2>&1 | stdbuf -oL sed "s/^/tail > /") &
        (stdbuf -oL zola serve 2>&1 | stdbuf -oL sed "s/^/zola > /") &
        wait
    '



deploy: build
    git add .
    git commit
    echo "todo"
    git tag "$(date '+%Y-%m-%d--%H-%M-%S')"