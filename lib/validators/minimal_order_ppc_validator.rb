class MinimalOrderPpcValidator < ActiveModel::EachValidator
  def validate_each(record, field, value)
    if value and (value.abs < 0.0001)
      record.errors[:base] << "Price per coin should not be smaller than 0.0001 #{record.currency}"
    end
  end
end
