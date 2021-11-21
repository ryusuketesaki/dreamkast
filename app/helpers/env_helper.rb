module EnvHelper
  def env_name
    if ENV["REVIEW_APP"] == "true"
      "review_app"
    elsif ENV["S3_BUCKET"] == "dreamkast-stg-bucket"
      "staging"
    elsif ENV["S3_BUCKET"] == "dreamkast-prd-bucket"
      "production"
    else
      "others"
    end
  end
end