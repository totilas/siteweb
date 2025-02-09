import os
import re
import yaml
import tomlkit
from pathlib import Path

def extract_frontmatter(content):
    """Extract YAML frontmatter from content."""
    yaml_pattern = r"^---\s*\n(.*?)\n---\s*\n"
    match = re.match(yaml_pattern, content, re.DOTALL)
    if match:
        frontmatter = match.group(1)
        rest_content = content[match.end():]
        return frontmatter, rest_content
    return None, content

def convert_yaml_to_toml(yaml_str):
    """Convert YAML string to TOML string."""
    try:
        # Parse YAML
        yaml_data = yaml.safe_load(yaml_str)
        if yaml_data is None:
            return ""
        
        # Convert to TOML
        toml_doc = tomlkit.document()
        for key, value in yaml_data.items():
            toml_doc[key] = value
        
        return toml_doc.as_string()
    except yaml.YAMLError as e:
        print(f"Error parsing YAML: {e}")
        return None
    except Exception as e:
        print(f"Error converting to TOML: {e}")
        return None

def process_file(file_path):
    """Process a single file, converting YAML frontmatter to TOML."""
    try:
        with open(file_path, 'r', encoding='utf-8') as f:
            content = f.read()

        # Check if file already has TOML frontmatter
        if content.startswith('+++'):
            print(f"Skipping {file_path} - already uses TOML frontmatter")
            return False

        # Extract YAML frontmatter
        yaml_fm, rest_content = extract_frontmatter(content)
        if yaml_fm is None:
            print(f"No YAML frontmatter found in {file_path}")
            return False

        # Convert to TOML
        toml_fm = convert_yaml_to_toml(yaml_fm)
        if toml_fm is None:
            print(f"Failed to convert frontmatter in {file_path}")
            return False

        # Create new content with TOML frontmatter
        new_content = f"+++\n{toml_fm}+++\n{rest_content}"

        # Create backup of original file
        # backup_path = str(file_path) + '.bak'
        # os.rename(file_path, backup_path)

        # Write new content
        with open(file_path, 'w', encoding='utf-8') as f:
            f.write(new_content)

        print(f"Successfully converted {file_path}")
        return True

    except Exception as e:
        print(f"Error processing {file_path}: {e}")
        return False

def main():
    # Get the content directory from user
    content_dir = input("Enter the path to your content directory: ")
    content_path = Path(content_dir)

    if not content_path.exists():
        print(f"Directory {content_dir} does not exist!")
        return

    # Process all markdown files
    converted = 0
    total = 0
    for file_path in content_path.rglob('*.md'):
        total += 1
        if process_file(file_path):
            converted += 1

    print(f"\nConversion complete!")
    print(f"Processed {total} files")
    print(f"Converted {converted} files")
    print(f"Backup files have been created with .bak extension")

if __name__ == "__main__":
    main()