Veewee::Session.declare({
  :cpu_count => '2', :memory_size=> '512',
  :disk_size => '102400', :disk_format => 'VDI', :hostiocache => 'off', 
  :virtualbox => { 
    :vm_options => [ 
      "ioapic" => "on",
      "pae" => "on",
    ],
  },
  :os_type_id => 'RedHat_64',
  :iso_file => "CentOS-5.9-x86_64-bin-DVD-1of2.iso",
  :iso_src => "http://mirrors.kernel.org/centos/5.9/isos/x86_64/CentOS-5.9-x86_64-bin-DVD-1of2.iso",
  :iso_md5 => "c8caaa18400dfde2065d8ef58eb9e9bf",
  :iso_download_timeout => 10000,
  :boot_wait => "10", :boot_cmd_sequence => [ 'linux text ks=http://%IP%:%PORT%/ks.cfg<Enter>' ],
  :kickstart_port => "7122", :kickstart_timeout => 10000, :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000", :ssh_user => "vagrant", :ssh_password => "vagrant", :ssh_key => "",
  :ssh_host_port => "7222", :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "virtualbox.sh",
    "install_matrix_deps",
    "postinstall.sh",
  ],
  :postinstall_timeout => 10000
})
