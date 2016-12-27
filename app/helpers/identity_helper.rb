module IdentityHelper

  def icon_for_identity_attribute attribute

    icon_name = case attribute
    when :political_affiliation
      "bank"
    when :religious_affiliation
      "star"
    when :age
      "calendar"
    when :gender
      "human-handsup"
    when :home_country
      "home"
    when :ethnicity
      "account-card-details"
    when :profession
      "briefcase"
    when :other
      "dots-horizontal"
    end


    "<i class=\"mdi mdi-#{icon_name}\"></i>".html_safe
  end

end
