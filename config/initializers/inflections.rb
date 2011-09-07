# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
#   inflect.irregular 'person', 'people'
#   inflect.uncountable %w( fish sheep )
# end

ActiveSupport::Inflector.inflections do |inflect|
  inflect.clear

  inflect.plural(/$/,  's')
  inflect.plural(/(s)$/i,  '\1')
  inflect.plural(/^(pa�)s$/i, '\1ses')
  inflect.plural(/(z|r)$/i, '\1es')
  inflect.plural(/al$/i,  'ais')
  inflect.plural(/el$/i,  'eis')
  inflect.plural(/ol$/i,  'ois')
  inflect.plural(/ul$/i,  'uis')
  inflect.plural(/([^aeou])il$/i,  '\1is')
  inflect.plural(/m$/i,   'ns')
  inflect.plural(/^(japon|escoc|ingl|dinamarqu|fregu|portugu)�s$/i,  '\1eses')
  inflect.plural(/^(|g)�s$/i,  '\1ases')
  inflect.plural(/�o$/i,  '�es')
  inflect.plural(/^(irm|m)�o$/i,  '\1�os')
  inflect.plural(/^(alem|c|p)�o$/i,  '\1�es')

  # Sem acentos...
  inflect.plural(/ao$/i,  'oes')
  inflect.plural(/^(irm|m)ao$/i,  '\1aos')
  inflect.plural(/^(alem|c|p)ao$/i,  '\1aes')

  inflect.singular(/([^�])s$/i, '\1')
  inflect.singular(/^(�|g�|pa�)s$/i, '\1s')
  inflect.singular(/(r|z)es$/i, '\1')
  inflect.singular(/([^p])ais$/i, '\1al')
  inflect.singular(/eis$/i, 'el')
  inflect.singular(/ois$/i, 'ol')
  inflect.singular(/uis$/i, 'ul')
  inflect.singular(/(r|t|f|v)is$/i, '\1il')
  inflect.singular(/ns$/i, 'm')
  inflect.singular(/sses$/i, 'sse')
  inflect.singular(/^(.*[^s]s)es$/i, '\1')
  inflect.singular(/�es$/i, '�o')
  inflect.singular(/aes$/i, 'ao')
  inflect.singular(/�os$/i, '�o')    
  inflect.singular(/aos$/i, 'ao')
  inflect.singular(/�es$/i, '�o')
  inflect.singular(/oes$/i, 'ao')
  inflect.singular(/(japon|escoc|ingl|dinamarqu|fregu|portugu)eses$/i, '\1�s')
  inflect.singular(/^(g|)ases$/i,  '\1�s')

  # Incont�veis
  inflect.uncountable %w( t�rax t�nis �nibus l�pis f�nix )

  # Irregulares
  inflect.irregular "pa�s", "pa�ses"
end