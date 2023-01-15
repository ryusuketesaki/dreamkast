class Admin::SponsorsController < ApplicationController
  include SecuredAdmin
  include LogoutHelper
  def new
    @conference = Conference.find_by(abbr: params[:event])
    @sponsor_types = @conference.sponsor_types
    @sponsor = Sponsor.new
    @sponsor_form = SponsorForm.new(sponsor: @sponsor)
    @sponsor_form.load
  end

  def index
    @sponsor_types = @conference.sponsor_types.order(order: 'ASC')
    @sponsors = @conference.sponsors
  end

  def show
    @sponsor = Sponsor.find(params[:id])
  end

  def edit
    @conference = Conference.find_by(abbr: params[:event])
    @sponsor_types = @conference.sponsor_types
    @sponsor = Sponsor.find(params[:id])
    @sponsor_form = SponsorForm.new(sponsor: @sponsor)
    @sponsor_form.load
  end

  def create
    @conference = Conference.find_by(abbr: params[:event])
    @sponsor_form = SponsorForm.new(sponsor_params, sponsor: Sponsor.new(conference: @conference))

    respond_to do |format|
      if @sponsor_form.save
        format.html { redirect_to(admin_sponsors_path(event: params[:event]), notice: 'Sponsor was successfully created.') }
      else
        format.html { render(:new) }
      end
    end
  end

  def update
     @sponsor = Sponsor.find(params[:id])
     @sponsor_form = SponsorForm.new(sponsor_params, sponsor: @sponsor)

    respond_to do |format|
      if @sponsor_form.save
        format.html { redirect_to(admin_sponsor_url(event: params[:event], id: params[:id]), notice: 'Sponsor was successfully updated.') }
      else
        format.html { render(:edit) }
      end
    end
  end

  private


  helper_method :sponsors_url

  def sponsors_url
    case action_name
    when 'new'
      "/#{params[:event]}/admin/sponsors"
    when 'edit', 'update'
      "/#{params[:event]}/admin/sponsors/#{params[:id]}"
    end
  end

  def sponsor_params
    params.require(:sponsor).permit(:id,
                                    :name,
                                    :abbr,
                                    :url,
                                    :description,
                                    :speaker_emails,
                                    :booth_published,
                                    :attachment_text,
                                    :attachment_vimeo,
                                    :attachment_zoom,
                                    :attachment_miro,
                                    :attachment_logo_image,
                                    sponsor_types: [],
                                    sponsor_attachment_key_images_attributes: [:id, :title, :file, :_destroy],
                                    sponsor_attachment_pdfs_attributes: [:id, :title, :file, :_destroy])
  end
end
