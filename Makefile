split:
	split -b 50M my_ubuntu.tar.gz "part"
merge:
	cat pat* > my_ubuntu.tar.gz
git:
	git add part*
