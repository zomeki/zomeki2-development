# encoding: utf-8
class Cms::SiteBasicAuthUser < ActiveRecord::Base
  include Sys::Model::Base
  include Sys::Model::Base::Page
  include Sys::Model::Rel::Unid
  include Sys::Model::Rel::Creator
  include Sys::Model::Auth::Manager

  include StateText

  validates_presence_of :site_id, :state, :name, :password

  def states
    [['有効','enabled'],['無効','disabled']]
  end
end
