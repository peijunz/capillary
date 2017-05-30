frames:
	#rm images/output_*
	ffmpeg -i T-L\ _\ 1-50\ tip-tip.avi 2>&1 |grep -o '[0-9]\+ fps'
	ffmpeg -i T-L\ _\ 1-50\ tip-tip.avi -r 30 images/output_%04d.jpg
analyse:
	python3 analyse.py
test:
	python3 test.py
