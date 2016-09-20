class ScrivitoPostPage < Obj
  attribute :title, :string
  attribute :body, :widgetlist
  attribute :created, :date
  attribute :author, :string

  default_for :created do
    Time.zone.now
  end
end
