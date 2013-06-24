SUBDIRS = Backup_und_Recovery Sicheres_Loeschen Videobearbeitung

.PHONY: subdirs $(SUBDIRS)
.PHONY: clean realclean

subdirs: $(SUBDIRS)

clean:
	for dir in $(SUBDIRS); do \
		$(MAKE) -C $$dir clean; \
	done

$(SUBDIRS):
	$(MAKE) -C $@ $(__target__)

