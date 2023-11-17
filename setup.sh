tmux new-session -d -s "scraper"
tmux send-keys -t "scraper" "python3 -m venv venv" C-m
tmux send-keys -t "scraper" "source venv/bin/activate" C-m
tmux send-keys -t "scraper" "pip install -r requirements.txt" C-m
tmux send-keys -t "scraper" "python scraper.py" C-m
tmux attach-session -t "scraper"