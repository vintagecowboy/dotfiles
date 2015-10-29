# dotfiles

# Set up SSH
ssh-keygen -t rsa -b 4096 -C "richardradley@gmail.com"
eval "$(ssh-agent -s)"
ssh-add ~/.ssh/id_rsa

# Copy public key to clipboard
pbcopy < ~/.ssh/id_rsa.pub

# Go to GitHub > Profile > Settings > SSH Keys
Add / replace key

# Test connectivity
ssh -T git@github.com

# Set Up Git
git config --global user.email "richardradley@gmail.com"
git config --global user.name "vintagecowboy"
git config --global push.default simple

# Now clone repository (cd to ~/Development or similar)
git clone https://github.com/vintagecowboy/dotfiles.git