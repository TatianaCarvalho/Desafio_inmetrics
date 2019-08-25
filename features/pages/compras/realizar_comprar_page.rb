module PageObjects
    module Compra
        class Compras
            include Capybara::DSL
            def selecionar_menu
               find('li[class*=item__electronics] a[class=ty-menu__item-link]', visible: :all).click
               
            end
            def selecionar_produtos
                find('input[id="elm_checkbox_31_10_92"]').click
                find('img[id="det_img_227"]').click             
            end
            
            def comprar_com_um_click
                find('a[id="opener_call_request_227"]', visible: :all).click
            end

            def preencher_formulario
                find('input[id*=_name]', visible: :all).click.set Faker::FunnyName.name
                find('input[id*=phone]', visible: :all).click.set Faker::PhoneNumber.subscriber_number(length: 14)
                # find('input[id*=email]', visible: :all).click.set Faker::Internet.email
                find('button[name="dispatch[call_requests.request]"]').click
            end
        end           
    end
end