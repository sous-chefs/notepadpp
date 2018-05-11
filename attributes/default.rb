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

default['notepadpp']['install_dir'] = ENV['ProgramFiles'] + '\Notepad++'

if node['kernel']['machine'] == 'x86_64'
  default['notepadpp']['url'] = 'https://notepad-plus-plus.org/repository/7.x/7.5.6/npp.7.5.6.Installer.x64.exe'
  default['notepadpp']['checksum'] = 'adc915baa76e80c26d04f0ce1df6b592da809b3e14815f5a53369a7f3a993a83'
  default['notepadpp']['package_name'] = 'Notepad++ (64-bit x64)'
else
  default['notepadpp']['url'] = 'https://notepad-plus-plus.org/repository/7.x/7.5.6/npp.7.5.6.Installer.exe'
  default['notepadpp']['checksum'] = '9ce95883c5821c3fa7b9319f4952d67ae077cdd79d5327dd7bed63542703cb82'
  default['notepadpp']['package_name'] = 'Notepad++ (32-bit x86)'
end
