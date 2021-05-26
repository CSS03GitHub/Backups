echo "--Automatisch backuppen naar Github--"

echo "Wat is het pad naar de files?"
read PROJECT_PATH

echo "Wat is je GitHub name"
read USERNAME

cd $PROJECT_PATH

git init
git add .
git commit -m "VersieControle"

curl -u ${CSS03GitHub}

git remote add origin https://github.com/CSS03GitHub/Backups.git
git push -f origin master

cd "$PROJECT_PATH"

echo "Gelukt! Je backup is gemaakt"
