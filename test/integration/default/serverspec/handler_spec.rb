require 'serverspec'
include Serverspec::Helper::Exec
include Serverspec::Helper::DetectOS

describe file('/var/mail/root') do
  its(:content) {
    should match "Subject: Successful Chef run on node default-ubuntu-1204.vagrantup.com"
  }
end
