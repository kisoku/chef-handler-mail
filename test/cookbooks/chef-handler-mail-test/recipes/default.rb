#
# Cookbook Name:: chef-handler-mail-test
# Recipe:: default
#
# Copyright:: 2014, Mathieu Sauve-Frankel <msf@kisoku.net>
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

chef_gem 'chef-handler-mail' do
  source '/tmp/build/chef-handler-mail.gem'
end
require 'chef/handler/mail'

chef_handler 'MailHandler' do
   source 'chef/handler/mail'
   arguments :to_address => "root"
   action :nothing
end.run_action(:enable)

package 'mailutils'
