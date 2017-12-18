require File.expand_path('../in_place_editing/controller_methods', __FILE__)
require File.expand_path('../in_place_editing/helper_methods', __FILE__)


if defined? ActionController
  ActionController::Base.send :include, InPlaceEditing
  ActionController::Base.helper InPlaceMacrosHelper

  if Gem.loaded_specs['actionpack'].version >= Gem::Version.create('4.0')
    require File.expand_path('../in_place_editing/rails4_helper_methods', __FILE__)
  end
end
