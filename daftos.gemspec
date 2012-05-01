# Generated by jeweler
# DO NOT EDIT THIS FILE DIRECTLY
# Instead, edit Jeweler::Tasks in Rakefile, and run 'rake gemspec'
# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "daftos"
  s.version = "0.2.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Ondrej Odchazel"]
  s.date = "2012-05-01"
  s.description = "OS in your browser"
  s.email = "hypertornado@gmail.com"
  s.executables = ["daftos"]
  s.extra_rdoc_files = [
    "LICENSE.txt",
    "README.rdoc"
  ]
  s.files = [
    ".DS_Store",
    ".document",
    "Gemfile",
    "Gemfile.lock",
    "LICENSE.txt",
    "README.rdoc",
    "Rakefile",
    "VERSION",
    "bin/daftos",
    "daftos.gemspec",
    "lib/.DS_Store",
    "lib/apis/.DS_Store",
    "lib/apis/filesystem_api.rb",
    "lib/apps/.DS_Store",
    "lib/apps/apps/body.html",
    "lib/apps/apps/options.json",
    "lib/apps/filebrowser/.DS_Store",
    "lib/apps/filebrowser/body.html",
    "lib/apps/filebrowser/coffee/filebrowser.coffee",
    "lib/apps/filebrowser/js/.DS_Store",
    "lib/apps/filebrowser/js/daftos.js",
    "lib/apps/filebrowser/options.json",
    "lib/apps/photobooth/.DS_Store",
    "lib/apps/photobooth/body.html",
    "lib/apps/photobooth/coffee/photobooth.coffee",
    "lib/apps/photobooth/coffee/test.html",
    "lib/apps/photobooth/css/style.css",
    "lib/apps/photobooth/js/.DS_Store",
    "lib/apps/photobooth/js/daftos.js",
    "lib/apps/photobooth/options.json",
    "lib/apps/photobrowser/body.html",
    "lib/apps/photobrowser/coffee/photobrowser.coffee",
    "lib/apps/photobrowser/js/.DS_Store",
    "lib/apps/photobrowser/options.json",
    "lib/apps/texteditor/body.html",
    "lib/apps/texteditor/coffee/texteditor.coffee",
    "lib/apps/texteditor/js/.DS_Store",
    "lib/apps/texteditor/js/ace-compat-noconflict.js",
    "lib/apps/texteditor/js/ace-compat-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/ace-compat-uncompressed.js",
    "lib/apps/texteditor/js/ace-compat.js",
    "lib/apps/texteditor/js/ace-noconflict.js",
    "lib/apps/texteditor/js/ace-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/ace-uncompressed.js",
    "lib/apps/texteditor/js/ace.js",
    "lib/apps/texteditor/js/keybinding-emacs-noconflict.js",
    "lib/apps/texteditor/js/keybinding-emacs-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/keybinding-emacs-uncompressed.js",
    "lib/apps/texteditor/js/keybinding-emacs.js",
    "lib/apps/texteditor/js/keybinding-vim-noconflict.js",
    "lib/apps/texteditor/js/keybinding-vim-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/keybinding-vim-uncompressed.js",
    "lib/apps/texteditor/js/keybinding-vim.js",
    "lib/apps/texteditor/js/mode-c_cpp-noconflict.js",
    "lib/apps/texteditor/js/mode-c_cpp-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-c_cpp-uncompressed.js",
    "lib/apps/texteditor/js/mode-c_cpp.js",
    "lib/apps/texteditor/js/mode-clojure-noconflict.js",
    "lib/apps/texteditor/js/mode-clojure-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-clojure-uncompressed.js",
    "lib/apps/texteditor/js/mode-clojure.js",
    "lib/apps/texteditor/js/mode-coffee-noconflict.js",
    "lib/apps/texteditor/js/mode-coffee-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-coffee-uncompressed.js",
    "lib/apps/texteditor/js/mode-coffee.js",
    "lib/apps/texteditor/js/mode-coldfusion-noconflict.js",
    "lib/apps/texteditor/js/mode-coldfusion-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-coldfusion-uncompressed.js",
    "lib/apps/texteditor/js/mode-coldfusion.js",
    "lib/apps/texteditor/js/mode-csharp-noconflict.js",
    "lib/apps/texteditor/js/mode-csharp-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-csharp-uncompressed.js",
    "lib/apps/texteditor/js/mode-csharp.js",
    "lib/apps/texteditor/js/mode-css-noconflict.js",
    "lib/apps/texteditor/js/mode-css-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-css-uncompressed.js",
    "lib/apps/texteditor/js/mode-css.js",
    "lib/apps/texteditor/js/mode-golang-noconflict.js",
    "lib/apps/texteditor/js/mode-golang-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-golang-uncompressed.js",
    "lib/apps/texteditor/js/mode-golang.js",
    "lib/apps/texteditor/js/mode-groovy-noconflict.js",
    "lib/apps/texteditor/js/mode-groovy-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-groovy-uncompressed.js",
    "lib/apps/texteditor/js/mode-groovy.js",
    "lib/apps/texteditor/js/mode-haxe-noconflict.js",
    "lib/apps/texteditor/js/mode-haxe-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-haxe-uncompressed.js",
    "lib/apps/texteditor/js/mode-haxe.js",
    "lib/apps/texteditor/js/mode-html-noconflict.js",
    "lib/apps/texteditor/js/mode-html-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-html-uncompressed.js",
    "lib/apps/texteditor/js/mode-html.js",
    "lib/apps/texteditor/js/mode-java-noconflict.js",
    "lib/apps/texteditor/js/mode-java-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-java-uncompressed.js",
    "lib/apps/texteditor/js/mode-java.js",
    "lib/apps/texteditor/js/mode-javascript-noconflict.js",
    "lib/apps/texteditor/js/mode-javascript-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-javascript-uncompressed.js",
    "lib/apps/texteditor/js/mode-javascript.js",
    "lib/apps/texteditor/js/mode-json-noconflict.js",
    "lib/apps/texteditor/js/mode-json-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-json-uncompressed.js",
    "lib/apps/texteditor/js/mode-json.js",
    "lib/apps/texteditor/js/mode-latex-noconflict.js",
    "lib/apps/texteditor/js/mode-latex-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-latex-uncompressed.js",
    "lib/apps/texteditor/js/mode-latex.js",
    "lib/apps/texteditor/js/mode-less-noconflict.js",
    "lib/apps/texteditor/js/mode-less-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-less-uncompressed.js",
    "lib/apps/texteditor/js/mode-less.js",
    "lib/apps/texteditor/js/mode-liquid-noconflict.js",
    "lib/apps/texteditor/js/mode-liquid-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-liquid-uncompressed.js",
    "lib/apps/texteditor/js/mode-liquid.js",
    "lib/apps/texteditor/js/mode-lua-noconflict.js",
    "lib/apps/texteditor/js/mode-lua-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-lua-uncompressed.js",
    "lib/apps/texteditor/js/mode-lua.js",
    "lib/apps/texteditor/js/mode-markdown-noconflict.js",
    "lib/apps/texteditor/js/mode-markdown-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-markdown-uncompressed.js",
    "lib/apps/texteditor/js/mode-markdown.js",
    "lib/apps/texteditor/js/mode-ocaml-noconflict.js",
    "lib/apps/texteditor/js/mode-ocaml-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-ocaml-uncompressed.js",
    "lib/apps/texteditor/js/mode-ocaml.js",
    "lib/apps/texteditor/js/mode-perl-noconflict.js",
    "lib/apps/texteditor/js/mode-perl-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-perl-uncompressed.js",
    "lib/apps/texteditor/js/mode-perl.js",
    "lib/apps/texteditor/js/mode-pgsql-noconflict.js",
    "lib/apps/texteditor/js/mode-pgsql-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-pgsql-uncompressed.js",
    "lib/apps/texteditor/js/mode-pgsql.js",
    "lib/apps/texteditor/js/mode-php-noconflict.js",
    "lib/apps/texteditor/js/mode-php-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-php-uncompressed.js",
    "lib/apps/texteditor/js/mode-php.js",
    "lib/apps/texteditor/js/mode-powershell-noconflict.js",
    "lib/apps/texteditor/js/mode-powershell-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-powershell-uncompressed.js",
    "lib/apps/texteditor/js/mode-powershell.js",
    "lib/apps/texteditor/js/mode-python-noconflict.js",
    "lib/apps/texteditor/js/mode-python-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-python-uncompressed.js",
    "lib/apps/texteditor/js/mode-python.js",
    "lib/apps/texteditor/js/mode-ruby-noconflict.js",
    "lib/apps/texteditor/js/mode-ruby-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-ruby-uncompressed.js",
    "lib/apps/texteditor/js/mode-ruby.js",
    "lib/apps/texteditor/js/mode-scad-noconflict.js",
    "lib/apps/texteditor/js/mode-scad-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-scad-uncompressed.js",
    "lib/apps/texteditor/js/mode-scad.js",
    "lib/apps/texteditor/js/mode-scala-noconflict.js",
    "lib/apps/texteditor/js/mode-scala-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-scala-uncompressed.js",
    "lib/apps/texteditor/js/mode-scala.js",
    "lib/apps/texteditor/js/mode-scss-noconflict.js",
    "lib/apps/texteditor/js/mode-scss-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-scss-uncompressed.js",
    "lib/apps/texteditor/js/mode-scss.js",
    "lib/apps/texteditor/js/mode-sh-noconflict.js",
    "lib/apps/texteditor/js/mode-sh-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-sh-uncompressed.js",
    "lib/apps/texteditor/js/mode-sh.js",
    "lib/apps/texteditor/js/mode-sql-noconflict.js",
    "lib/apps/texteditor/js/mode-sql-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-sql-uncompressed.js",
    "lib/apps/texteditor/js/mode-sql.js",
    "lib/apps/texteditor/js/mode-svg-noconflict.js",
    "lib/apps/texteditor/js/mode-svg-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-svg-uncompressed.js",
    "lib/apps/texteditor/js/mode-svg.js",
    "lib/apps/texteditor/js/mode-text-noconflict.js",
    "lib/apps/texteditor/js/mode-text-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-text-uncompressed.js",
    "lib/apps/texteditor/js/mode-text.js",
    "lib/apps/texteditor/js/mode-textile-noconflict.js",
    "lib/apps/texteditor/js/mode-textile-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-textile-uncompressed.js",
    "lib/apps/texteditor/js/mode-textile.js",
    "lib/apps/texteditor/js/mode-xml-noconflict.js",
    "lib/apps/texteditor/js/mode-xml-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-xml-uncompressed.js",
    "lib/apps/texteditor/js/mode-xml.js",
    "lib/apps/texteditor/js/mode-xquery-noconflict.js",
    "lib/apps/texteditor/js/mode-xquery-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/mode-xquery-uncompressed.js",
    "lib/apps/texteditor/js/mode-xquery.js",
    "lib/apps/texteditor/js/theme-chrome-noconflict.js",
    "lib/apps/texteditor/js/theme-chrome-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-chrome-uncompressed.js",
    "lib/apps/texteditor/js/theme-chrome.js",
    "lib/apps/texteditor/js/theme-clouds-noconflict.js",
    "lib/apps/texteditor/js/theme-clouds-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-clouds-uncompressed.js",
    "lib/apps/texteditor/js/theme-clouds.js",
    "lib/apps/texteditor/js/theme-clouds_midnight-noconflict.js",
    "lib/apps/texteditor/js/theme-clouds_midnight-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-clouds_midnight-uncompressed.js",
    "lib/apps/texteditor/js/theme-clouds_midnight.js",
    "lib/apps/texteditor/js/theme-cobalt-noconflict.js",
    "lib/apps/texteditor/js/theme-cobalt-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-cobalt-uncompressed.js",
    "lib/apps/texteditor/js/theme-cobalt.js",
    "lib/apps/texteditor/js/theme-crimson_editor-noconflict.js",
    "lib/apps/texteditor/js/theme-crimson_editor-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-crimson_editor-uncompressed.js",
    "lib/apps/texteditor/js/theme-crimson_editor.js",
    "lib/apps/texteditor/js/theme-dawn-noconflict.js",
    "lib/apps/texteditor/js/theme-dawn-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-dawn-uncompressed.js",
    "lib/apps/texteditor/js/theme-dawn.js",
    "lib/apps/texteditor/js/theme-dreamweaver-noconflict.js",
    "lib/apps/texteditor/js/theme-dreamweaver-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-dreamweaver-uncompressed.js",
    "lib/apps/texteditor/js/theme-dreamweaver.js",
    "lib/apps/texteditor/js/theme-eclipse-noconflict.js",
    "lib/apps/texteditor/js/theme-eclipse-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-eclipse-uncompressed.js",
    "lib/apps/texteditor/js/theme-eclipse.js",
    "lib/apps/texteditor/js/theme-idle_fingers-noconflict.js",
    "lib/apps/texteditor/js/theme-idle_fingers-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-idle_fingers-uncompressed.js",
    "lib/apps/texteditor/js/theme-idle_fingers.js",
    "lib/apps/texteditor/js/theme-kr_theme-noconflict.js",
    "lib/apps/texteditor/js/theme-kr_theme-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-kr_theme-uncompressed.js",
    "lib/apps/texteditor/js/theme-kr_theme.js",
    "lib/apps/texteditor/js/theme-merbivore-noconflict.js",
    "lib/apps/texteditor/js/theme-merbivore-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-merbivore-uncompressed.js",
    "lib/apps/texteditor/js/theme-merbivore.js",
    "lib/apps/texteditor/js/theme-merbivore_soft-noconflict.js",
    "lib/apps/texteditor/js/theme-merbivore_soft-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-merbivore_soft-uncompressed.js",
    "lib/apps/texteditor/js/theme-merbivore_soft.js",
    "lib/apps/texteditor/js/theme-mono_industrial-noconflict.js",
    "lib/apps/texteditor/js/theme-mono_industrial-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-mono_industrial-uncompressed.js",
    "lib/apps/texteditor/js/theme-mono_industrial.js",
    "lib/apps/texteditor/js/theme-monokai-noconflict.js",
    "lib/apps/texteditor/js/theme-monokai-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-monokai-uncompressed.js",
    "lib/apps/texteditor/js/theme-monokai.js",
    "lib/apps/texteditor/js/theme-pastel_on_dark-noconflict.js",
    "lib/apps/texteditor/js/theme-pastel_on_dark-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-pastel_on_dark-uncompressed.js",
    "lib/apps/texteditor/js/theme-pastel_on_dark.js",
    "lib/apps/texteditor/js/theme-solarized_dark-noconflict.js",
    "lib/apps/texteditor/js/theme-solarized_dark-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-solarized_dark-uncompressed.js",
    "lib/apps/texteditor/js/theme-solarized_dark.js",
    "lib/apps/texteditor/js/theme-solarized_light-noconflict.js",
    "lib/apps/texteditor/js/theme-solarized_light-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-solarized_light-uncompressed.js",
    "lib/apps/texteditor/js/theme-solarized_light.js",
    "lib/apps/texteditor/js/theme-textmate-noconflict.js",
    "lib/apps/texteditor/js/theme-textmate-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-textmate-uncompressed.js",
    "lib/apps/texteditor/js/theme-textmate.js",
    "lib/apps/texteditor/js/theme-tomorrow-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow-uncompressed.js",
    "lib/apps/texteditor/js/theme-tomorrow.js",
    "lib/apps/texteditor/js/theme-tomorrow_night-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night-uncompressed.js",
    "lib/apps/texteditor/js/theme-tomorrow_night.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_blue-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_blue-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_blue-uncompressed.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_blue.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_bright-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_bright-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_bright-uncompressed.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_bright.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_eighties-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_eighties-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_eighties-uncompressed.js",
    "lib/apps/texteditor/js/theme-tomorrow_night_eighties.js",
    "lib/apps/texteditor/js/theme-twilight-noconflict.js",
    "lib/apps/texteditor/js/theme-twilight-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-twilight-uncompressed.js",
    "lib/apps/texteditor/js/theme-twilight.js",
    "lib/apps/texteditor/js/theme-vibrant_ink-noconflict.js",
    "lib/apps/texteditor/js/theme-vibrant_ink-uncompressed-noconflict.js",
    "lib/apps/texteditor/js/theme-vibrant_ink-uncompressed.js",
    "lib/apps/texteditor/js/theme-vibrant_ink.js",
    "lib/apps/texteditor/js/worker-coffee.js",
    "lib/apps/texteditor/js/worker-css.js",
    "lib/apps/texteditor/js/worker-javascript.js",
    "lib/apps/texteditor/js/worker-json.js",
    "lib/apps/texteditor/options.json",
    "lib/daftos.rb",
    "lib/daftos/.DS_Store",
    "lib/daftos/server.rb",
    "lib/daftos/views/app_footer.erb",
    "lib/daftos/views/app_header.erb",
    "lib/libs/.DS_Store",
    "lib/libs/coffee/daftos.coffee",
    "lib/libs/css/bootstrap.css",
    "lib/libs/js/bootstrap.js",
    "lib/libs/js/jquery.js",
    "myapp.pid",
    "test/helper.rb",
    "test/test_daftos.rb"
  ]
  s.homepage = "http://github.com/hypertornado/daftos"
  s.licenses = ["MIT"]
  s.require_paths = ["lib"]
  s.rubygems_version = "1.8.17"
  s.summary = "OS in your browser"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>, [">= 0"])
      s.add_development_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_development_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_development_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_development_dependency(%q<ptools>, [">= 0"])
    else
      s.add_dependency(%q<shoulda>, [">= 0"])
      s.add_dependency(%q<rdoc>, ["~> 3.12"])
      s.add_dependency(%q<bundler>, ["~> 1.0.0"])
      s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
      s.add_dependency(%q<ptools>, [">= 0"])
    end
  else
    s.add_dependency(%q<shoulda>, [">= 0"])
    s.add_dependency(%q<rdoc>, ["~> 3.12"])
    s.add_dependency(%q<bundler>, ["~> 1.0.0"])
    s.add_dependency(%q<jeweler>, ["~> 1.8.3"])
    s.add_dependency(%q<ptools>, [">= 0"])
  end
end

