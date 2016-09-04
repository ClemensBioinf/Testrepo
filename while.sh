OUTPUT="None"
while true; do
	git pull
	git add --all
	git commit -m "auto commit"
	/bin/sleep 1
	git push
	OUTPUT="$(git push)"
	/bin/sleep 2
        if [[ $OUTPUT =~ "up-to-date" ]]; then
		echo "Pushing successful."
		break
	fi
done
