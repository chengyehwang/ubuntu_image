split:
	split -b 50M myubuntu.tar.gz "part"
merge:
	cat part* > myubuntu.tar.gz
sha:
	sha256sum myubuntu.tar.gz
git:
	git add part*
