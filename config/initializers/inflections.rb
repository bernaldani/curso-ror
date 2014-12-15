# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format
# (all these examples are active by default):
ActiveSupport::Inflector.inflections do |inflect|
#   inflect.plural /^(ox)$/i, '\1en'
#   inflect.singular /^(ox)en/i, '\1'
   inflect.irregular 'sistema_operativo', 'sistemas_operativos'
   inflect.irregular 'capacidad', 'capacidades'
   inflect.irregular 'proveedor', 'proveedores'
   inflect.irregular 'componente_modelo', 'componentes_modelos'
   inflect.irregular 'capacidad_modelo', 'capacidades_modelos'
   inflect.irregular 'serie', 'series'
#   inflect.uncountable %w( fish sheep )
end
#
# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections do |inflect|
#   inflect.acronym 'RESTful'
# end
