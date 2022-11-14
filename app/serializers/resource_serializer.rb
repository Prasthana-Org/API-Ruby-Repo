class ResourceSerializer < ActiveModel::Serializer
  attributes :id, :Assets, :Brand, :Generation, :Tag_No, :color
  has_many :employees
end
