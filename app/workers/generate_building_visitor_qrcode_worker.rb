class GenerateBuildingVisitorQrcodeWorker
  include Sidekiq::Worker
  sidekiq_options queue: :critical, retry: 3, lock: :until_executed

  def perform(building_visitor_id)
    building_visitor = BuildingVisitor.find(building_visitor_id)
    file = wx_getwxacode(building_visitor)
    begin
      file.open if file
      if building_visitor.qrcode.present?
        building_visitor.qrcode.update(file: file)
      else
        building_visitor.create_qrcode(file: file)
      end
    ensure
      file.close if file
    end
  end

  private

  def wx_getwxacode(building_visitor)
    payload = { page: "pages/propertyDetail/propertyDetail", user_id: building_visitor.visitor_id, building_id: building_visitor.building_id }
    WxAPI.qrcode.user_building_qrocde(payload)
  end
end
