#WHM APACHE USERDIR
echo "userdirprotect"
/usr/sbin/whmapi1 set_tweaksetting key=userdirprotect value=1

#WHM ACCESSO COMPILATORI
/scripts/compilers on

#WHM CPHULK
/usr/local/cpanel/bin/cphulk_pam_ctl --disable
/usr/local/cpanel/etc/init/stopcphulkd
rm -f /var/cpanel/hulkd/enabled

#CLAMAV
/scripts/update_local_rpm_versions --edit target_settings.clamav installed
/scripts/check_cpanel_rpms --fix --targets=clamav



echo "dnsadmin_log"
/usr/sbin/whmapi1 set_tweaksetting key=dnsadmin_log value=1
echo "log_successful_logins"
/usr/sbin/whmapi1 set_tweaksetting key=log_successful_logins value=1
echo "allowremotedomains"
/usr/sbin/whmapi1 set_tweaksetting key=allowremotedomains value=1
echo "alwaysredirecttossl"
/usr/sbin/whmapi1 set_tweaksetting key=alwaysredirecttossl value=1
echo "api_shell"
/usr/sbin/whmapi1 set_tweaksetting key=api_shell value=0
echo "autocreateaentries"
/usr/sbin/whmapi1 set_tweaksetting key=autocreateaentries value=1
echo "autodiscover_host"
/usr/sbin/whmapi1 set_tweaksetting key=autodiscover_host value=cpanelemaildiscovery.cpanel.net
echo "autodiscover_mail_service"
/usr/sbin/whmapi1 set_tweaksetting key=autodiscover_mail_service value=imap
echo "autodiscover_proxy_subdomains"
/usr/sbin/whmapi1 set_tweaksetting key=autodiscover_proxy_subdomains value=1
echo "awstatsbrowserupdate"
/usr/sbin/whmapi1 set_tweaksetting key=awstatsbrowserupdate value=0
echo "awstatsreversedns"
/usr/sbin/whmapi1 set_tweaksetting key=awstatsreversedns value=0
echo "blockcommondomains"
/usr/sbin/whmapi1 set_tweaksetting key=blockcommondomains value=1
echo "database_prefix"
/usr/sbin/whmapi1 set_tweaksetting key=database_prefix value=1
echo "default_remove-old-archived-logs"
/usr/sbin/whmapi1 set_tweaksetting key=default_remove-old-archived-logs value=1
echo "defaultmailaction"
/usr/sbin/whmapi1 set_tweaksetting key=defaultmailaction value=fail
echo "discardformmailbccsubject"
/usr/sbin/whmapi1 set_tweaksetting key=discardformmailbccsubject value=1
echo "disk_usage_include_sqldbs"
/usr/sbin/whmapi1 set_tweaksetting key=disk_usage_include_sqldbs value=1
echo "email_account_quota_default_selected"
/usr/sbin/whmapi1 set_tweaksetting key=email_account_quota_default_selected value=userdefined
echo "email_account_quota_userdefined_default_value value=5120"
/usr/sbin/whmapi1 set_tweaksetting key=email_account_quota_userdefined_default_value value=5120

echo "email_send_limits_max_defer_fail_percentage"
                /usr/sbin/whmapi1 set_tweaksetting key=email_send_limits_max_defer_fail_percentage value=80
                echo "email_send_limits_min_defer_fail_to_trigger_protection"
                /usr/sbin/whmapi1 set_tweaksetting key=email_send_limits_min_defer_fail_to_trigger_protection value=25
                echo "emailarchive"
                /usr/sbin/whmapi1 set_tweaksetting key=emailarchive value=0
                echo "emailpasswords"
                /usr/sbin/whmapi1 set_tweaksetting key=emailpasswords value=0
                echo "exim-retrytime"
                /usr/sbin/whmapi1 set_tweaksetting key=exim-retrytime value=15
                echo "ionice_bandwidth_processing"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_bandwidth_processing value=6
                echo "ionice_cpbackup"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_cpbackup value=6
                echo "ionice_email_archive_maintenance"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_email_archive_maintenance value=7
                echo "ionice_ftpquotacheck"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_ftpquotacheck value=6
                echo "ionice_log_processing"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_log_processing value=7
                echo "ionice_quotacheck"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_quotacheck value=6
                echo "ionice_userbackup"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_userbackup value=7
                echo "ionice_userproc"
                /usr/sbin/whmapi1 set_tweaksetting key=ionice_userproc value=6
                echo "jailapache"
                /usr/sbin/whmapi1 set_tweaksetting key=jailapache value=6
                echo "jaildefaultshell"
                /usr/sbin/whmapi1 set_tweaksetting key=jaildefaultshell value=6
                echo "maxmem"
                /usr/sbin/whmapi1 set_tweaksetting key=maxmem value=512
                echo "minpwstrength"
                /usr/sbin/whmapi1 set_tweaksetting key=minpwstrength value=70
echo "mycnf_auto_adjust_innodb_buffer_pool_size"
                /usr/sbin/whmapi1 set_tweaksetting key=mycnf_auto_adjust_innodb_buffer_pool_size value=0
                echo "mycnf_auto_adjust_maxallowedpacket"
                /usr/sbin/whmapi1 set_tweaksetting key=mycnf_auto_adjust_maxallowedpacket value=1
                echo "mycnf_auto_adjust_openfiles_limit"
                /usr/sbin/whmapi1 set_tweaksetting key=mycnf_auto_adjust_openfiles_limit value=1
                echo "nobodyspam"
                /usr/sbin/whmapi1 set_tweaksetting key=nobodyspam value=1
                echo "nosendlangupdates"
                /usr/sbin/whmapi1 set_tweaksetting key=nosendlangupdates value=1
                echo "phploader"
                /usr/sbin/whmapi1 set_tweaksetting key=phploader value=ioncube
                echo "proxysubdomains"
                /usr/sbin/whmapi1 set_tweaksetting key=proxysubdomains value=1
                echo "proxysubdomainsfornewaccounts"
                /usr/sbin/whmapi1 set_tweaksetting key=proxysubdomainsfornewaccounts value=1
                echo "proxysubdomainsoverride"
                /usr/sbin/whmapi1 set_tweaksetting key=proxysubdomainsoverride value=1
                echo "requiressl"
                /usr/sbin/whmapi1 set_tweaksetting key=requiressl value=0
                echo "resetpass"
                /usr/sbin/whmapi1 set_tweaksetting key=resetpass value=0
                echo "resetpass_sub"
                /usr/sbin/whmapi1 set_tweaksetting key=resetpass_sub value=0
                echo "rotatelogs_size_threshhold_in_megabytes"
                /usr/sbin/whmapi1 set_tweaksetting key=rotatelogs_size_threshhold_in_megabytes value=300000
                echo "send_error_reports"
                /usr/sbin/whmapi1 set_tweaksetting key=send_error_reports value=0
                echo "send_server_configuration"
                /usr/sbin/whmapi1 set_tweaksetting key=send_server_configuration value=0
                echo "send_server_usage"
                /usr/sbin/whmapi1 set_tweaksetting key=send_server_usage value=0
                echo "server_locale"
                /usr/sbin/whmapi1 set_tweaksetting key=server_locale value=en
                echo "skipanalog"
                /usr/sbin/whmapi1 set_tweaksetting key=skipanalog value=0
                echo "skipawstats"
                /usr/sbin/whmapi1 set_tweaksetting key=skipawstats value=0
                echo "skipboxcheck"
                /usr/sbin/whmapi1 set_tweaksetting key=skipboxcheck value=0
                echo "skipboxtrapper"
                /usr/sbin/whmapi1 set_tweaksetting key=skipboxtrapper value=0
                echo "skipbwlimitcheck"
                /usr/sbin/whmapi1 set_tweaksetting key=skipbwlimitcheck value=0
                echo "skipchkservd"
                /usr/sbin/whmapi1 set_tweaksetting key=skipchkservd value=0
                echo "skipcpbandwd"
                /usr/sbin/whmapi1 set_tweaksetting key=skipcpbandwd value=0
                echo "skipdiskcheck"
                /usr/sbin/whmapi1 set_tweaksetting key=skipdiskcheck value=0
                echo "skipdiskusage"
                /usr/sbin/whmapi1 set_tweaksetting key=skipdiskusage value=0
                echo "skipeximstats"
                /usr/sbin/whmapi1 set_tweaksetting key=skipeximstats value=0
                echo "skipformmail"
                /usr/sbin/whmapi1 set_tweaksetting key=skipformmail value=1
                echo "skiphorde"
                /usr/sbin/whmapi1 set_tweaksetting key=skiphorde value=0
                echo "skiphttpauth"
                /usr/sbin/whmapi1 set_tweaksetting key=skiphttpauth value=1
                echo "skipjailmanager"
                /usr/sbin/whmapi1 set_tweaksetting key=skipjailmanager value=0
                echo "skipmailauthoptimizer"
                /usr/sbin/whmapi1 set_tweaksetting key=skipmailauthoptimizer value=0
                echo "skipmailman"
                /usr/sbin/whmapi1 set_tweaksetting key=skipmailman value=0
                echo "skipmodseclog"
                /usr/sbin/whmapi1 set_tweaksetting key=skipmodseclog value=0
                echo "skipnotifyacctbackupfailure"
                /usr/sbin/whmapi1 set_tweaksetting key=skipnotifyacctbackupfailure value=0
                echo "skipoomcheck"
                /usr/sbin/whmapi1 set_tweaksetting key=skipoomcheck value=0
                echo "skipparentcheck"
                /usr/sbin/whmapi1 set_tweaksetting key=skipparentcheck value=0
                echo "skiprecentauthedmailiptracker"
                /usr/sbin/whmapi1 set_tweaksetting key=skiprecentauthedmailiptracker value=0
                echo "skiproundcube"
                /usr/sbin/whmapi1 set_tweaksetting key=skiproundcube value=0
                echo "skipspamassassin"
                /usr/sbin/whmapi1 set_tweaksetting key=skipspamassassin value=0
                echo "skipspambox"
                /usr/sbin/whmapi1 set_tweaksetting key=skipspambox value=0
                echo "skipsqmail"
                /usr/sbin/whmapi1 set_tweaksetting key=skipsqmail value=0
                echo "skiptailwatchd"
                /usr/sbin/whmapi1 set_tweaksetting key=skiptailwatchd value=0
                echo "skipwebalizer"
                /usr/sbin/whmapi1 set_tweaksetting key=skipwebalizer value=0
                echo "skipwhoisns"
                /usr/sbin/whmapi1 set_tweaksetting key=skipwhoisns value=0
                echo "use_apache_md5_for_htaccess"
                /usr/sbin/whmapi1 set_tweaksetting key=use_apache_md5_for_htaccess value=1
                echo "use_information_schema"
                /usr/sbin/whmapi1 set_tweaksetting key=use_information_schema value=0
                echo "useauthnameservers"
                /usr/sbin/whmapi1 set_tweaksetting key=useauthnameservers value=0
                echo "usemysqloldpass"
                /usr/sbin/whmapi1 set_tweaksetting key=usemysqloldpass value=0
                echo "skipboxcheck"
                /usr/sbin/whmapi1 set_tweaksetting key=skipboxcheck value=0
                echo "coredump"
                /usr/sbin/whmapi1 set_tweaksetting key=coredump value=0
                echo "enable_piped_logs"
                /usr/sbin/whmapi1 set_tweaksetting key=enable_piped_logs value=0
                echo "chkservd_plaintext_notify"
                /usr/sbin/whmapi1 set_tweaksetting key=chkservd_plaintext_notify value=0
                echo "disablequotacache"
                /usr/sbin/whmapi1 set_tweaksetting key=disablequotacache value=0
                echo "ignoredepreciated"
                /usr/sbin/whmapi1 set_tweaksetting key=ignoredepreciated value=0
                echo "skip_chkservd_recovery_notify"
                /usr/sbin/whmapi1 set_tweaksetting key=skip_chkservd_recovery_notify value=0
