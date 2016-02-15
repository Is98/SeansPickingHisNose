Vagrant.configure(2) do |config|
	
	config.vm.box 	= 	"ubuntu/trusty64"
	domain   		= 	".hot.private"
	
	defaultRAM		=	1024
	defaultCores	=	4
	
	masterIP 		= 	"192.168.1.150"
	mRAM			= 	defaultRAM
	mCores			= 	defaultCores
	
	kibanaIP	 	= 	"192.168.1.151"
	kRAM			= 	defaultRAM
	kCores			= 	defaultCores
	
	graylogIP 		= 	"192.168.1.152"
	gRAM			= 	defaultRAM
	gCores			= 	defaultCores
	
	elasticIP 		= 	"192.168.1.153"
	eRAM			= 	defaultRAM
	eCores			= 	defaultCores
	
	redisIP 		= 	"192.168.1.154"
	rRAM			= 	defaultRAM
	rCores			= 	defaultCores
	
	logstashIP 		= 	"192.168.1.155"
	lRAM			= 	defaultRAM
	lCores			= 	defaultCores
	
	nginxIP 		= 	"192.168.1.156"
	nRAM			= 	defaultRAM
	nCores			= 	defaultCores
	
	
	config.vm.define "master" do |master|
		master.vm.hostname = "master" + domain
		master.vm.network "public_network", ip: masterIP
	
		master.vm.provision "puppetinstall",
			type: "shell",
			path: "master.sh"

		config.vm.provider :virtualbox do |vb|
			vb.memory = mRAM
			vb.cpus = mCores
		end
		
		master.vm.synced_folder "modules/", "/etc/puppet/modules"
		master.vm.synced_folder "manifests/", "/etc/puppet/manifests"
		
	end
	
	
	
	config.vm.define "Kibana" do |agent|
		agent.vm.hostname = "kibana" + domain
		agent.vm.network "public_network", ip: kibanaIP
		
		config.vm.provider :virtualbox do |vb|
			vb.memory = mRAM
			vb.cpus = mCores
		end
		
		agent.vm.provision "agent",
			type: "shell",
			path: "kibana.sh"
	end

	config.vm.define "Graylog" do |agent|
		agent.vm.hostname = "graylog" + domain
		agent.vm.network "public_network", ip: graylogIP
		
		config.vm.provider :virtualbox do |vb|
			vb.memory = gRAM
			vb.cpus = gCores
		end
		
		agent.vm.provision "agent",
			type: "shell",
			path: "graylog.sh"
	end

	config.vm.define "ElasticSearch" do |agent|
		agent.vm.hostname = "elasticsearch" + domain
		agent.vm.network "public_network", ip: elasticIP
		
		config.vm.provider :virtualbox do |vb|
			vb.memory = eRAM
			vb.cpus = eCores
		end
		
		agent.vm.provision "agent",
			type: "shell",
			path: "elastic.sh"
	end
	
	config.vm.define "Redis" do |agent|
		agent.vm.hostname = "redis" + domain
		agent.vm.network "public_network", ip: redisIP
		
		config.vm.provider :virtualbox do |vb|
			vb.memory = rRAM
			vb.cpus = rCores
		end
		
		agent.vm.provision "agent",
			type: "shell",
			path: "redis.sh"
	end

	config.vm.define "LogStash" do |agent|
		agent.vm.hostname = "logstash" + domain
		agent.vm.network "public_network", ip: logstashIP
		
		config.vm.provider :virtualbox do |vb|
			vb.memory = lRAM
			vb.cpus = lCores
		end
		
		agent.vm.provision "agent",
			type: "shell",
			path: "logstash.sh"
	end

	config.vm.define "nginx" do |agent|
		agent.vm.hostname = "nginx" + domain
		agent.vm.network "public_network", ip: nginxIP
		
		config.vm.provider :virtualbox do |vb|
			vb.memory = nRAM
			vb.cpus = nCores
		end
		
		agent.vm.provision "agent",
			type: "shell",
			path: "nginx.sh"
	end

end
