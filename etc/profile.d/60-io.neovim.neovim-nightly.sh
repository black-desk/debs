if [ -f /etc/environment.d/60-io.neovim.neovim-nightly.conf ]; then
	source /etc/environment.d/60-io.neovim.neovim-nightly.conf
fi

# NOTE:
# We only need to export PATH here.
# As PATH is the only one which is overwrited by /etc/profile.
export PATH
