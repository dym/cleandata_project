all: proj

proj:
	LC_ALL=C R --no-save < run_analysis.R

clean:
	rm -f UCI_HAR_Dataset_Cleaned.txt
