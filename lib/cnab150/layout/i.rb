module Cnab150
  module Layout
    # Layout of Register I
    # Return of collections identified by barcode
    class I
      def keys
        [ 
          :registry_code,
          :person_id,
          :document_type,
          :document_number,
          :name,
          :city,
          :state,
          :filler
       ]
      end

      def layout
        'A' + [1, 25, 1, 14, 40, 30, 2, 37].join('A')
      end

      def self.mapping
        {
          registry_code: 1,
          person_id: 25,
          document_type: 1,
          document_number: 14,
          name: 40,
          city: 30,
          state: 2,
          filler: 37
        }
      end

    end
  end
end