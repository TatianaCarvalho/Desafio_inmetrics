module PageObjects
    module Home
      class Acesso
        include Capybara::DSL
        def acessar_site
          window = Capybara.current_session.driver.browser.manage.window
          window.resize_to(1260, 800) # width, height
          page.driver.browser.manage.window.maximize
          visit 'https://demo.cs-cart.com'
        end
      end 
    end
end