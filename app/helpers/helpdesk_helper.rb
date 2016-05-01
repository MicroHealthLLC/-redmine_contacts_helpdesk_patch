module HelpdeskHelper
  def self.helpdesk_ticket_source_icon(helpdesk_ticket)
    case helpdesk_ticket.source
      when HelpdeskTicket::HELPDESK_EMAIL_SOURCE
        "icon-email"
      when HelpdeskTicket::HELPDESK_PHONE_SOURCE
        "icon-call"
      when HelpdeskTicket::HELPDESK_WEB_SOURCE
        "icon-web"
      when HelpdeskTicket::HELPDESK_TWITTER_SOURCE
        "icon-twitter"
      else
        "icon-helpdesk"
    end
  end
end