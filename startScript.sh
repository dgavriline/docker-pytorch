export LC_ALL=C.UTF-8
export LANG=C.UTF-8
while true; do
    git clone https://github.com/dgavriline/docker-pytorch repo;

    RET=$?
    if [[ $RET != 0 ]]; then 
        echo "Failed to clone repo. Non-zero exit code: $RET"
        echo "Trying again in 5 seconds"
        sleep 5
        continue
    fi
    break
done
echo "Repo successfully cloned."
pip3 install -r /repo/requirements.txt
FLASK_ENV=development FLASK_APP=/repo/app.py flask run
python /repo/post.py