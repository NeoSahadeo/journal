#!/usr/bin/bash

kill_process() {
	kill $(pgrep -f "listen.sh")
	kill $(pgrep -f "python -m http.server -b localhost")
}

if [[ $(pgrep -f "listen.sh") -gt 0 ]]; then
	kill $(pgrep -f "listen.sh")
	./listen.sh &
else
	./listen.sh &
fi
if [[ $(pgrep -f "python -m http.server -b localhost") -gt 0 ]]; then
	kill $(pgrep -f "python -m http.server -b localhost")
	./pyserver.sh &
else
	./pyserver.sh &
fi

handle_sigint() {
	echo -e "\nClosing stuff!\n"
	$(kill_process)
	exit 1
}
trap handle_sigint SIGINT

while true; do
	sleep 1
done
