#
# Author:: Tristan O'Neil (<tristanoneil@gmail.com>)
# Recipe:: default
#
# Copyright 2014 Chef Software, Inc.
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

include_recipe 'build-essential'
include_recipe 'python'
include_recipe 'nodejs'
include_recipe 'supermarket::_postgres' if node['supermarket']['_postgres']
include_recipe 'supermarket::_redis' if node['supermarket']['_redis']
include_recipe 'supermarket::_sidekiq' if node['supermarket']['_sidekiq']
include_recipe 'git'
include_recipe 'supermarket::_ruby' if node['supermarket']['_ruby']
include_recipe 'supermarket::_nginx' if node['supermarket']['_nginx']
include_recipe 'supermarket::_users' if node['supermarket']['_users']
include_recipe 'supermarket::_runit' if node['supermarket']['_runit']
include_recipe 'supermarket::_application' if node['supermarket']['_application']


