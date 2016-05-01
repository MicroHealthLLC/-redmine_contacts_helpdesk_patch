Redmine::Plugin.register :redmine_contacts_helpdesk_patch do
  name 'Redmine Contacts Helpdesk Patch plugin'
  author 'Author name'
  description 'This is a plugin for Redmine'
  version '0.0.1'
  url 'http://example.com/path/to/plugin'
  author_url 'http://example.com/about'


  begin
    requires_redmine_plugin :redmine_contacts_helpdesk, :version_or_higher => '3.0.0'
  rescue Redmine::PluginNotFound  => e
    raise "Please install redmine_contacts Helpdesk plugin"
  end
end

Rails.application.config.to_prepare do
  QueriesHelper.send(:include, Rchp::QueriesHelperPatch)
end

