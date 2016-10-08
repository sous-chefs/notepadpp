#
# Author:: Shawn Neal (<sneal@sneal.net>)
# Cookbook Name:: notepadpp
# Attribute:: default
#
# Copyright 2016, Shawn Neal
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

default['notepadpp']['base_url']    = 'https://notepad-plus-plus.org/repository/7.x/'
default['notepadpp']['version']     = '7.0'
default['notepadpp']['setup_exe']   = 'npp.7.Installer.exe'
default['notepadpp']['checksum']    = '0155c4ab117d63ba5142fc1090debc07dc7953264f7202ef8d25014e2cf8668d'
default['notepadpp']['install_dir'] = (ENV['ProgramFiles(x86)'] || 'C:\Program Files (x86)') + '\Notepad++'
