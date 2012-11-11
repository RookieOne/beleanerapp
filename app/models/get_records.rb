class GetRecords
  attr_reader :result

  def initialize(record_name)
    @record_name = record_name

    @result = {
      name: record_name,
      records: get_records
    }
  end

  def get_records
    klass = Object.const_get(@record_name.singularize)
    klass.all.map.each do |m|
      { id: m.id, created_at: m.created_at.strftime("%m/%d/%Y") }
    end
  end

end