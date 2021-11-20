class Block < ApplicationRecord
    has_many :addresses, dependent: :destroy

    def create_ip_range
        @block = Block.find(params[:id])
        @block = IPAddress.parse(@block)

        puts @block
        
        @block.each_host do |host|
             host = Address.new
        end
    end
end
