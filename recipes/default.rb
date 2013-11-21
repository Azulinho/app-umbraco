#
# Cookbook Name:: app-umbraco
# Recipe:: default
#
# Copyright 2013, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
#
include_recipe "windows"
include_recipe "ms_dotnet4"
# wrapping ms_dotnet45, as it was failling to download the goods
include_recipe "wrappers::ms_dotnet45"
include_recipe "wrappers::install-IIS-roles"
include_recipe "7-zip"
include_recipe "webpi"
# opscode mysql cookbook is failling during compilation phase on windows
# rather quickly write my own than looking into the errors upstream
include_recipe "wrappers::install-mysql"
include_recipe "wrappers::install-umbraco"
include_recipe "windows::reboot_handler"



