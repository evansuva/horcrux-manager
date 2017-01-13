.PHONY: dev github
MSG="update"
REPO="horcrux-manager"

dev:
	@echo "dev setup..."

github:
	git add -A 
	git commit -m "${MSG}"
	git push

${REPO}.zip:
	git archive --format=zip HEAD -o ${REPO}.zip -9v

${REPO}.tar.gz:
	git archive --format=tar.gz HEAD -o ${REPO}.tar.gz -9v
