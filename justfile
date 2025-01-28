build:
    tailwindcss -i styles/styles.css -o static/styles/styles.css -c tailwind.config.js
    zola build

serve: build
    echo "Re-run 'just build' to each modification to the './styles/styles.css' or 'tailwind.config.js' files."
    zola serve

deploy: build
    git add .
    git commit
    echo "todo"
    git tag "$(date '+%Y-%m-%d--%H-%M-%S')"