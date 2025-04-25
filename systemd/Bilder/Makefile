.PHONY: clean

TARGETS=startup_plot.png

all: $(TARGETS)

%.png: %.svg
	inkscape -o $@ -w 1024 -h 1024 $<

clean:
	rm $(TARGETS)
