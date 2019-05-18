class Bjorn < VueComponent
  data :name, 'Björn'

  tag_name :bjorn

  template <<-TEMPLATE
    <div>
      {{name}}
    </div>
  TEMPLATE
end

Bjorn.activate
