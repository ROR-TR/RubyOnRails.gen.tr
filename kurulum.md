# rubyonrails.gen.tr için kurulum

### açıklamalar

`>` lokal

`#` sunucuda root

`$` sunucuda deploy kullanıcısı

## Lokalde yapılacaklar

lokaldeki global gemler

	> gem install mina
	> gem install mailcatcher

## Sunucuda Yapılacaklar

sunucudaki gereklilikler ve deploy kullanıcısının yaratılması

	> ssh root@rubyonrails.gen.tr
	# apt-get -y update
	# apt-get install git nginx sqlite3 libsqlite3-dev nodejs postgresql postgresql-contrib libpq-dev
	# adduser webapp
	# adduser webapp sudo
	# exit

deploy kullanıcısı ile yapılacaklar, mina icin hazırlık

	> ssh webapp@rubyonrails.gen.tr
	$ curl https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
	$ cd /var
	$ sudo mkdir -p www/rorgentr
	$ exit

## Deployment

ilk deployment öncesi

	> mina setup

her bir deployment için

	> mina deploy
