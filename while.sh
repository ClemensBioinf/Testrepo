LOOP=0
while [[ ${LOOP} != "*Everything\ up-to-date*" ]]
        do
                git pull
		git add --all
		git commit -m "auto commit"
		git push
		LOOP="$(git push)"
		echo "${LOOP}"
		/bin/sleep 2
        done

