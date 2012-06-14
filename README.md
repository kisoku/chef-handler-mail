# DESCRIPTION:

A simple chef report handler that uses the Pony gem to send email reports
generated from an Erubis template. Inspired by the example handler on the
Opcode wiki at http://wiki.opscode.com/display/chef/Exception+and+Report+Handlers

# USAGE:

Using /etc/chef/config.rb

    require 'rubygems'
    require 'chef/handler/mail'

    mail_handler = MailHandler.new
    report_handlers << mail_handler
    exception_handlers << mail_handler


Using chef_handler LWRP

    chef_gem "chef-handler-mail"
    gem "chef-handler-mail"

    chef_handler "MailHandler" do
       source 'chef/handler/mail'
       arguments :to_address => "root"
       action :nothing
    end.run_action(:enable)

# LICENSE AND AUTHOR:

Author:: Mathieu Sauve-Frankel (<msf@kisoku.net>)

Copyright:: 2011, Mathieu Sauve-Frankel

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
