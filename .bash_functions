short() {
	curl https://lateralus.uk/shorty -d 'url='"$1"
}

lines() {
	awk '{print "\033[32;m", NR, "\033[33;m => \033[0;m" $0}' "$1"
}

notify() {
	/usr/bin/osascript -e "display notification \"$*\" with title \"Notify\" sound name \"Submarine\""
}

genpdf() {
	pandoc "$1" --toc -o "$2"
}
