split:
	split -b 50M my_ubuntu.tar.gz "part"
merge:
	cat part* > my_ubuntu.tar.gz
sha:
	sha256sum my_ubuntu.tar.gz
git:
	git add part*
