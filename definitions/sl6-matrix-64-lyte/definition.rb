Veewee::Session.declare({
  :cpu_count => '2',
  :memory_size=> '1024',
  :disk_size => '81920',
  :disk_format => 'VDI',
  :hostiocache => 'off',
  :os_type_id => 'RedHat_64',
  :iso_file => "SL-63-x86_64-2012-08-02-boot.iso",
  :virtualbox => { :vm_options => [
    "ioapic" => "on",
    "pae" => "on"
  ]},
  :iso_src => "http://mirror.aarnet.edu.au/pub/scientific/6.3/x86_64/iso/SL-63-x86_64-2012-08-02-boot.iso",
  :iso_md5 => "a0356a9d19cb462edb4f95790d435b8d",
  :iso_download_timeout => 1000,
  :boot_wait => "15",
  :boot_cmd_sequence => [ '<Tab> text ks=http://%IP%:%PORT%/ks.cfg<Enter>' ],
  :kickstart_port => "7122",
  :kickstart_timeout => 10000,
  :kickstart_file => "ks.cfg",
  :ssh_login_timeout => "10000",
  :ssh_user => "vagrant",
  :ssh_password => "vagrant",
  :ssh_key => "",
  :ssh_host_port => "7222",
  :ssh_guest_port => "22",
  :sudo_cmd => "echo '%p'|sudo -S sh '%f'",
  :shutdown_cmd => "/sbin/halt -h -p",
  :postinstall_files => [
    "base.sh",
    "vagrant.sh",
    "virtualbox.sh",
    "install_matrix_deps",
    "cleanup.sh"
  ],
  :postinstall_timeout => 10000
})
