PARTS = $(wildcard part*)
split:
	-git rm part*
	split -b 50M myubuntu.tar.gz "part"
	git add part*
	git commit -m "update image"
merge:
	git pull
	cat part* > myubuntu.tar.gz
myubuntu.tar.gz: $(PARTS)
	cat part* > myubuntu.tar.gz
sha:
	sha256sum myubuntu.tar.gz

