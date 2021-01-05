CURRENT_NUM :=
ROLLBACK_NUM :=

.PHONY: rollback
rollback:
	git tag -d build-number-$(CURRENT_NUM)
	git push origin :refs/tags/build-number-$(CURRENT_NUM)
	git tag build-number-$(ROLLBACK_NUM)
	git push origin build-number-$(ROLLBACK_NUM)
