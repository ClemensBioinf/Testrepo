OUTPUT="None"
while true; do
	git pull
	git add --all
	git commit -m "auto commit"
	/bin/sleep 1
	git push
	OUTPUT="$(git push)"
	echo $OUTPUT
	echo "-----"
	/bin/sleep 2
        if [[ $OUTPUT =~ "Everything" ]]; then
		echo "Pushing successful."
		break
	fi
done
