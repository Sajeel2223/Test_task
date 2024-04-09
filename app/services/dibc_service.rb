# app/services/dibc_service.rb
class DibcService
    def self.add_contact(contact_params)
      Contact.create(contact_params)
    end
  
    def self.add_provider(provider_params)
      Provider.create(provider_params)
    end
end
  