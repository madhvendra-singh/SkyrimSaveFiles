pushd "C:\Users\madhav\Documents\My Games\Skyrim Special Edition GOG"
echo.>.gitignore
bash -c "command find . -type f -size +99M >> .gitignore"
bash -c "sed -i "s,^\./,," .gitignore" 
git add --all
git commit -m "autoCommit %date:~-4%%date:~3,2%%date:~0,2%.%time:~0,2%%time:~3,2%%time:~6,2%"
git push
popd
exit