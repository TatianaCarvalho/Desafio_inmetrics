Before do
    @site = PageObjects::Home::Acesso.new
    @compras = PageObjects::Compra::Compras.new

end
Dado("que estou no site Shopping cart") do
    @site.acessar_site
end
  
Quando("seleciono um produto e realizo uma compra") do
    @compras.selecionar_menu
    @compras.selecionar_produtos
    @compras.comprar_com_um_click
    @compras.preencher_formulario
end
  
Então("tenho vejo mensagem") do
    # find('div[class="cm-notification-container notification-container alert alert-success cm-auto-hide"]')
    expect(page).to have_content('NoticeWe have received your request! Our manager will contact you soon.')
end