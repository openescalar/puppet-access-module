# Copyright 2014 Miguel Zuniga miguelzuniga@gmail.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at

#    http://www.apache.org/licenses/LICENSE-2.0

# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.#
# Define: access
#
# Set which users or members of a group have access to the box.
#
# Parameters:
#   usergroups: An array of users/groups that will have access.
#
# Requires:
#   puppet-pam-module
#

define access($usergroups = []){
  file { '/etc/security/access.conf':
    content => template('access/access.conf.erb'),
    owner   => 'root',
    group   => 'root',
    mode    => '0644',
  }
}
