module ApplicationHelper
    def hash_me(arr)
        @responsehash = []
        arr.each do |f|
            @responsehash.push(Hash[(FLIGHT_INDEX).zip f])
        end
    end

    def table_me(hash)
        xm = Builder::XmlMarkup.new(:indent => 17)
        xm.table {
            xm.tr { hash[0].keys.each { |key| xm.th(key)}}
            hash.each { |row| xm.tr { row.values.each { |value| xm.td(value)}}}
          }
        puts xm
    end
end
