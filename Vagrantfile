# -*- mode: ruby -*-
# vi: set ft=ruby :

Vagrant.configure("2") do |config|
  config.vm.box = "bento/ubuntu-16.04"
	
  config.vm.provision "shell", inline: <<-SHELL
    apt-get update
	apt-get -y install build-essentials
	apt-get -y install python3-pip
	apt-get -y install unzip
	apt-get -y install libfontconfig1-dev
	pip3 install inflection
	pip3 install pycparser
	wget https://github.com/vlang/v/releases/latest/download/v_linux.zip -P /home/vagrant
	wget https://www.nuget.org/api/v2/package/Avalonia.Skia.Linux.Natives/1.68.0.2 -P /home/vagrant/ -O skia_linux_prebuilt.zip
	mkdir /home/vagrant/skia_linux_prebuilt/
	unzip -o skia_linux_prebuilt.zip -d /home/vagrant/skia_linux_prebuilt/
	mkdir /vagrant/lib
	cp skia_linux_prebuilt/runtimes/linux-x64/native/libSkiaSharp.so /vagrant/lib/libskia.so
	cp /home/vagrant/skia_linux_prebuilt/runtimes/linux-x64/native/libSkiaSharp.so \
	/home/vagrant/skia_linux_prebuilt/runtimes/linux-x64/native/libSkiaSharp.so.68.1.0
	unzip -o /home/vagrant/v_linux.zip
	git clone https://github.com/eliben/pycparser.git /home/vagrant/pycparser
	sudo chmod -R 777 /home/vagrant/v
	export PATH=/home/vagrant/v:$PATH
	export LD_LIBRARY_PATH=/home/vagrant/skia_linux_prebuilt/runtimes/linux-x64/native/:$LD_LIBRARY_PATH
	v -cg test.v && ./test
  SHELL
end
