for file in ~/.config/alias/*; do
  if [[ $file == *".zsh"* ]]; then
    source $file
  fi
done
