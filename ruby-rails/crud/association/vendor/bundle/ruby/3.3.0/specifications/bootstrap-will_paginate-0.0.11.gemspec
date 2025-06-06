# -*- encoding: utf-8 -*-
# stub: bootstrap-will_paginate 0.0.11 ruby lib

Gem::Specification.new do |s|
  s.name = "bootstrap-will_paginate".freeze
  s.version = "0.0.11".freeze

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Nicholas Fine".freeze, "Isaac Bowen".freeze]
  s.date = "2017-03-14"
  s.description = "Hooks into will_paginate to format the html to match Twitter Bootstrap styling.  Extension code was originally written by Isaac Bowen (https://gist.github.com/1182136).".freeze
  s.email = ["nick@ndfine.com".freeze, "ikebowen@gmail.com".freeze]
  s.homepage = "https://github.com/yrgoldteeth/bootstrap-will_paginate".freeze
  s.rubygems_version = "2.5.2".freeze
  s.summary = "Format will_paginate html to match Twitter Bootstrap styling.".freeze

  s.installed_by_version = "3.5.11".freeze if s.respond_to? :installed_by_version

  s.specification_version = 4

  s.add_runtime_dependency(%q<will_paginate>.freeze, [">= 0".freeze])
end
