package testopts;

use strict;
use Exporter;
use vars qw($VERSION @ISA @EXPORT @EXPORT_OK);

$VERSION     = 1.00;
@ISA         = qw(Exporter);
@EXPORT      = ();
@EXPORT_OK   = qw(get_testopts);

sub get_testopts  { 
	my $set={
		action_mouseover		=> 0,
		cancel_before_global_timeout	=> 0,
		checkresults_dir		=> "'./tmp/checkresults'",
		child_interval			=> "0.0",
		cmdfile_update_interval		=> 86400,
		collapse			=> 1,
		config_dir			=> "'./tmp/config'",
		cumulate_max_rows		=> 5,
		cumulate_ignore_zero		=> 1,
		dont_be_paranoid		=> 1,
		empty_output_is_unknown		=> 1,
		exec_open3			=> 0,
		extinfo_in_status		=> "0",
		extended_perfdata		=> "0",
		feed_passive_autocreate		=> "1",
		feed_passive_dir_permissions	=> "0750",
		feed_passive_dir		=> "'./tmp/feed_passive'",
		file_extension			=> "cmd",
		HOSTADDRESS			=> "127.0.0.1",
		HOSTNAME			=> "localhost",
		ignore_missing_cmd_file		=> 0,
		illegal_chars			=> "",
		image_path			=> "'/nagios/images'",
		indent				=> "' '",
		indent_label			=> 1,
		libexec				=> "'/usr/local/nagios/libexec'",
		livestatus			=> "'/usr/local/nagios/var/rw/live'",
		pnp_version			=> "0.6",
		no_checks_rc			=> 3,
		notes_url			=> "",
		objects_cache			=> "'/usr/local/nagios/var/objects.cache'",
		objects_cache_delimiter		=> ",",
		persistent			=> 0,
		plugin_path			=> "'/usr/local/nagios/libexec'",
		pnp_url				=> "'/pnp4nagios'",
		report				=> 13,
		send_nsca			=> "'/usr/local/nagios/sbin/send_nsca'",
		send_nsca_cfg			=> "'/usr/local/nagios/etc/send_nsca.cfg'",
		send_nsca_srv			=> "localhost",
		send_nsca_port			=> 5667,
		send_nsca_timeout		=> 10,
		send_nsca_delim			=> "';'",
		signal_rc			=> 3,
		loose_perfdata			=> "1",
		snmp_community			=> "public",
		snmp_port			=> "161",
		status_dat			=> "'/usr/local/nagios/var/status.dat'",
		tag_notes_link			=> "",
		target				=> "'_self'",
		test				=> 0,
		timeout				=> 10,
		TIMEOUT				=> 60,
		tmp_dir				=> "'./tmp'",
		tmp_etc				=> "'./tmp/etc'",
		tmp_dir_permissions		=> "0750",
		verbose				=> 0,
		eml_elements			=> "'name,rc,output,error,plugin,command,performance,starttime,endtime,runtime,type'",
	};
	
	my $testopts="";
	foreach my $key (sort keys %{$set}) {
		$testopts.=" -s $key=$set->{$key}";
	}
	return $testopts;
}
1;
