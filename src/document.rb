class Document
  def self.find(id)
    element = Native(`document.getElementById(#{id})`)
    element.innerHTML = 'You found me!'
  end

  def self.hello_world(number)
    %x{
      const element = document.createElement('div')

      element.innerHTML = "Hello world " +  #{number} + "!"

      document.body.append(element)
    }
  end
end
