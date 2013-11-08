# Redmine plugin for Document Management System "Features"
#
# Copyright (C) 2011   Vít Jonáš <vit.jonas@gmail.com>
# Copyright (C) 2012   Daniel Munn <dan.munn@munnster.co.uk>
# Copyright (C) 2013   Karel Pičman <karel.picman@kontron.com>
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA.

module Redmine
  module Acts
    module Customizable
      module InstanceMethods
#        def available_custom_fields
#          cf_classname = self.class.name == 'DmsfFolder' ? 'DmsfFileRevision' : self.class.name
#          CustomField.find(:all, :conditions => "type = '#{cf_classname}CustomField'", :order => 'position')
#        end

        def show_custom_field_values
#          a = custom_field_values
#          c = a.count
#          custom_field_values.each do |v|
#            if v.id.blank?
#              if v.value.blank?
#                d = true
#              end
#            end
#          end
          #custom_field_values.delete_if { |x| (!x.id && x.id.blank?) || x.value.blank? } if d
          custom_field_values.delete_if { |v| v.custom_field.blank? || v.value.blank? }
#          b = a.count
        end
      end
    end
  end
end
