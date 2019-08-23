module PageObjects
    module Compra
        class Compras
            include Capybara::DSL
            def selecionar_menu
               find('li[class*=item__electronics] a[class=ty-menu__item-link]', visible: :all).click
               
            end
            def selecionar_produtos
                find('input[id="elm_checkbox_31_10_92"]').click
                find('img[id="det_img_244"]').click             
            end
            
            def comprar_com_um_click
                find('a[id="opener_call_request_244"]').click
            end

            def preencher_formulario
                find('input[id="call_data_call_request_244_name"]', visible: :all).click.set('Tati')
                find('input[id="call_data_call_request_244_phone"]', visible: :all).click.set('11111111111')
                find('button[name="dispatch[call_requests.request]"]').click
            end
        end           
    end
end