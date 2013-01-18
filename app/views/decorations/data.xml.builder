xml.instruct! :xml, :version=>"1.0" 

xml.tag!("rows") do
    @decorationexpenses.each do |decorationexpense|
        xml.tag!("row",{ "id" => decorationexpense.id }) do
            xml.tag!("cell", decorationexpense.name)
            xml.tag!("cell", decorationexpense.amount)
       
        end
    end
end