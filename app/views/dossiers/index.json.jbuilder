json.array!(@dossiers) do |dossier|
  json.extract! dossier, :id, :title, :template
  json.url dossier_url(dossier, format: :json)
end
