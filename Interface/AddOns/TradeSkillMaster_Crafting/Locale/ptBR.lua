-- ------------------------------------------------------------------------------------- --
-- 					TradeSkillMaster_Crafting - AddOn by Sapu94							 	  	  --
--   http://wow.curse.com/downloads/wow-addons/details/TradeSkillMaster_Crafting.aspx   --
--																													  --
--		This addon is licensed under the CC BY-NC-ND 3.0 license as described at the		  --
--				following url: http://creativecommons.org/licenses/by-nc-nd/3.0/			 	  --
-- 	Please contact the author via email at sapu94@gmail.com with any questions or		  --
--		concerns regarding this license.																	  --
-- ------------------------------------------------------------------------------------- --

-- TradeSkillMaster_Crafting Locale - ptBR
-- Please use the localization app on CurseForge to update this
-- http://wow.curseforge.com/addons/TradeSkillMaster_Crafting/localization/

local L = LibStub("AceLocale-3.0"):NewLocale("TradeSkillMaster_Crafting", "ptBR")
if not L then return end

L["2H Weapon"] = "Arma de 2M" -- Needs review
L["Add Crafted Items from this Group to Auctioning Groups"] = "Itens Produzidos deste grupo foram adicionados aos Grupos de Leilão." -- Needs review
L["Added %s crafted items to: %s."] = "Adicionado %s itens produzidos para: %s." -- Needs review
L["Added %s crafted items to %s individual groups."] = "Adicionados %s itens produzidos para %s grupos individuais." -- Needs review
L["Add Item to New Group"] = "Adicionar Item para um Grupo Novo"
L["Add Item to Selected Group"] = "Adicionar Item para o Grupo Selecionado"
L["Add Item to TSM_Auctioning"] = "Adicionar item para TSM_Auctioning"
L["Additional Item Settings"] = "Configurações Adicionais para o Item"
L["Addon to use for alt data:"] = "Addon a ser usado para os dados dos alts:"
L["Adds all items in this Crafting group to Auctioning group(s) as per the above settings."] = "Adiciona todos os itens deste Grupo de Produção para o(s) Grupo(s) de Leilão de acordo com as configurações acima." -- Needs review
L["AH/Bags/Bank/Alts"] = "CL/Bolsas/Banco/Alts"
L["All"] = "Todos" -- Needs review
L["All in Individual Groups"] = "Todos em Grupos Individuais" -- Needs review
L["All in Same Group"] = "Todos no Mesmo Grupo" -- Needs review
L["Allows you to override the minimum profit settings for this profession."] = "Permite que você sobrescreva as configurações de lucro mínimo para esta profissão." -- Needs review
L["Allows you to set a custom maximum queue quantity for this item."] = "Permite que você customize a quantidade máxima de fila deste item." -- Needs review
L["Allows you to set a custom maximum queue quantity for this profession."] = "Permite que você customize a quantidade máxima de fila desta profissão." -- Needs review
L["Allows you to set a custom minimum ilvl to queue."] = "Permite a você definir um invl mínimo personalizado para enfileirar." -- Needs review
L["Allows you to set a custom minimum queue quantity for this item."] = "Permite que você determine uma quantidade mínima a ser colocada na fila para este item."
L["Allows you to set a custom minimum queue quantity for this profession."] = "Permite que você customize a quantidade mínima de fila desta profissão." -- Needs review
L["Allows you to set a different craft sort method for this profession."] = "Permite que você defina um método de classificação de produto diferente para esta profissão." -- Needs review
L["Allows you to set a different craft sort order for this profession."] = "Permite que você defina uma ordem de classificação de produto diferente para essa profissão." -- Needs review
L["All vendor items that cost more than this price will not be ignored by the on-hand queue."] = "Todos os itens do vendedor que custam mais do que este preço não serão ignorados pela fila na-mão." -- Needs review
L["Always queue this item."] = "Sempre enfileirar este item." -- Needs review
L["Are you sure you want to delete the selected profile?"] = "Você tem certeza que quer deletar o perfil selecionado?"
L["Armor"] = "Armadura" -- Needs review
L["Armor - Back"] = "Armadura - Costas" -- Needs review
L["Armor - Chest"] = "Armadura - Torso" -- Needs review
L["Armor - Feet"] = "Armadura - Pés" -- Needs review
L["Armor - Hands"] = "Armadura - Mãos" -- Needs review
L["Armor - Head"] = "Armadura - Cabeça" -- Needs review
L["Armor - Legs"] = "Armadura - Pernas" -- Needs review
L["Armor - Shield"] = "Armadura - Escudos" -- Needs review
L["Armor - Shoulders"] = "Armadura - Ombros" -- Needs review
L["Armor - Waist"] = "Armadura - Cintura" -- Needs review
L["Armor - Wrists"] = "Armadura - Pulso" -- Needs review
L["Ascending"] = "Crescente" -- Needs review
L["Auctioneer"] = "Auctioneer"
L["Auction House"] = "Casa de Leilão" -- Needs review
L["Auction House Value"] = "Valor para Casa de Leilão" -- Needs review
L["Bags"] = "Bolsas" -- Needs review
L["Bars"] = "Barras" -- Needs review
L["Blackfallow Ink"] = "Tinta Negropardo" -- Needs review
L["Blue Gems"] = "Gemas Azuis" -- Needs review
L["Boots"] = "Botas" -- Needs review
L["Bracers"] = "Braceletes" -- Needs review
L["Cannot delete currently active profile!"] = "Não pode remover o perfil ativo no momento!" -- Needs review
L["Can not set a max restock quantity below the minimum restock quantity of %d."] = "Não se pode estabelecer a quantidade de reabastecimento máxima abaixo da quantidade mínima de %d."
L["Can not set a min restock quantity above the max restock quantity of %d."] = "Não pode definir uma quantidade mínima de reabastecimento acima da quantidade máxima de reabastecimento de %d." -- Needs review
L["Category to put groups into:"] = "Categoria a colocar os grupos dentro:" -- Needs review
L["Celestial Ink"] = "Tinta Celestial" -- Needs review
L["Character(s) (comma-separated if necessary):"] = "Pensonagem(s) (separados-por-vírgula se necessário):" -- Needs review
L["Characters to include:"] = "Personagens a serem incluídos:"
L["Character to Send Crafting Costs to:"] = "Personagem a Enviar Custos de Produção para:"
L["Checking this box will allow you to set a custom, fixed price for this item."] = "Marcar esta caixa permitirá que você estabeleça um preço fixo customizado pra este item." -- Needs review
L["Chest"] = "Torso" -- Needs review
L["Class"] = "Classe"
L["Clear Queue"] = "Limpar fila"
L["Clear Tradeskill Filters"] = "Limpar os filtros de habilidades" -- Needs review
L["Cloak"] = "Capa" -- Needs review
L["Close TradeSkillMaster_Crafting"] = "Fechar o TradeSkillMaster_Crafting"
L["Cloth"] = "Tecido" -- Needs review
L["Combine/Split Essences/Eternals"] = "Combinar/Separar Essências/Eternais" -- Needs review
L["Companions"] = "Mascotes" -- Needs review
L["Compressing and sending %s bytes of data to %s. This will take approximately %s seconds. Please wait..."] = "Comprimindo e enviando %s bytes de dados para %s. Isto levará aproximadamente %s segundos. Por favor aguarde..." -- Needs review
L["Consumables"] = "Consumível" -- Needs review
L["Copy From"] = "Copiar de"
L["Copy the settings from one existing profile into the currently active profile."] = "Copiar as configurações de um perfil existente para o perfil ativo."
L["Cost"] = "Custo" -- Needs review
L["Cost: %s Market Value: %s Profit: %s Times Crafted: %s"] = "Custo: %s Valor de Mercado: %s Lucro: %s Vezes produzido: %s"
L["Cost to Craft"] = "Custo de Produção" -- Needs review
L["Craft"] = "Produzir"
L["Crafting Cost: %s (%s profit)"] = "Custo de Produção: %s (lucro de %s)" -- Needs review
L["Crafting Cost Synchronization"] = "Sincronização de Custo de Produção"
L["Crafting Options"] = "Opções de Produção"
L["<Crafting Stage #%s>"] = "<Estágio de Produção #%s>"
L["Craft Item (x%s)"] = "Produzir Item (x%s)" -- Needs review
L["Craft Management Window Settings"] = "Definições da Janela de Gerenciamento de Produção"
L["Craft Next"] = "Produzir próximo"
L["Crafts"] = "Produtos"
L["Create a new empty profile."] = "Criar um novo perfil vazio."
L["Create Auctioning Groups"] = "Criar Grupos de Leilão" -- Needs review
L["Current Profile:"] = "Perfil atual:"
L["Custom"] = "Personalizado" -- Needs review
L["Custom Value"] = "Valor personalizado" -- Needs review
L["DataStore"] = "DataStore"
L["Default"] = "Padrão"
L["Delete a Profile"] = "Deletar um Perfil"
L["Delete existing and unused profiles from the database to save space, and cleanup the SavedVariables file."] = "Deletar perfis não utilizados do banco de dados para liberar espaço, e limpando o arquivo SavedVariables."
L["Descending"] = "Decrescente" -- Needs review
L["Disable All Crafts"] = "Desabilitar Todas as Produções"
L["Don't queue this item."] = "Não enfileirar este item."
L["Double Click Queue"] = "Clique duplo na fila"
L["Edit Custom Value"] = "Editar valor personalizado" -- Needs review
L["Elixir"] = "Elixir" -- Needs review
L["Enable All Crafts"] = "Ativar Todas as Produções"
L["Enable / Disable showing this craft in the craft management window."] = "Ativar / Desativar a exibição deste item na Janela de Gerenciamento de Produção."
L["Enable New TradeSkills"] = "Habilitar novas Habilidades" -- Needs review
L["Enter a value that Crafting will use as the cost of this material."] = "Entre com o valor que o Produção usará como o custo deste material." -- Needs review
L["Enter what you want to multiply the cost of the other item by to calculate the price of this mat."] = "Entre qual valor você quer multiplicar o custo do outro item para calcular o preço deste material." -- Needs review
L["Estimated Total Mat Cost:"] = "Custo Estimado Total dos Materiais:" -- Needs review
L["Estimated Total Profit:"] = "Lucro Total Estimado:" -- Needs review
L["Ethereal Ink"] = "Tinta Etérea" -- Needs review
L["Existing Profiles"] = "Perfis existentes"
L["Explosives"] = "Explosivos" -- Needs review
L["Export Crafts to TradeSkillMaster_Auctioning"] = "Exportar Produtos para TradeSkillMaster_Auctioning" -- Needs review
L["Filter out items with low seen count."] = "Filtrar itens vistos poucas vezes."
L["Flask"] = "Flasco" -- Needs review
L["Force Rescan of Profession (Advanced)"] = "Forçar Escaneamento das Profissões (Avançado)" -- Needs review
L["Frame Scale"] = "Escala da janela"
L["General Price Sources"] = "Fonte de Preços Geral" -- Needs review
L["General Setting Overrides"] = "Ultrapassar Configurações Gerais" -- Needs review
L["General Settings"] = "Configurações Gerais" -- Needs review
L["Get Craft Prices From:"] = "Obter Preços de Produção de:"
L["Get Mat Prices From:"] = "Pegar custo dos materiais de:"
L["Gloves"] = "Luvas" -- Needs review
L["Gold Amount"] = "Quantia de Ouro"
L["Got invalid crafting cost data from %s."] = "Recebeu dados de custo de produção inválidos de %s."
L["Green Gems"] = "Gemas Verdes" -- Needs review
L["Group Inscription Crafts By:"] = "Agrupar itens de Escrivania por:"
L["Group to Add Crafts to:"] = "Grupo para adicionar produtos:" -- Needs review
L["Guilds to include:"] = "Guildas a serem incluídas:"
L["Guns"] = "Armas de fogo" -- Needs review
L["Help"] = "Ajuda"
L["Here, you can override default restock queue settings."] = "Aqui você pode sobrescrever as configurações padrão da Fila de Reabastecimento." -- Needs review
L["Here, you can override general settings."] = "Aqui você pode sobrescrever as configurações gerais." -- Needs review
L["Here you can view and adjust how Crafting is calculating the price for this material."] = "Aqui você pode ver e ajustar como o Produção calcula o preço deste material." -- Needs review
L["How to add crafts to Auctioning:"] = "Como adicionar produtos para Leilão:" -- Needs review
L["If checked, any crafts which are already in an Auctioning group will be removed from their current group and a new group will be created for them. If you want to maintain the groups you already have setup that include items in this group, leave this unchecked."] = "Se marcado, qualquer produto que já está em um Grupo de Leilão será removido do seu grupo atual e um novo grupo sera criado para eles. Se você quiser manter os itens nos grupos que você já configurou deixe desmarcado." -- Needs review
L["If checked, Crafting will account for items you have on the AH."] = "Se marcado, a Produção irá contabilizar itens que você possui na CL."
L["If checked, Only crafts that are enabled (have the checkbox to the right of the item link checked) below will be added to Auctioning groups."] = "Se marcado, somente produtos que estão habilitados (com a caixa de seleção a direita do link do item ativada) abaixo serão adicionados aos Grupos de Leilão." -- Needs review
L["If checked, only vendor items below a maximum price will be ignored by the on-hand queue."] = "Se marcado, apenas itens de vendedores abaixo de um preço máximo serão ignorados pela fila na-mão." -- Needs review
L["If checked, the crafting cost of items will be shown in the tooltip for the item."] = "Se marcado, o custo de produção dos itens será exibido na dica de interface do item." -- Needs review
L["If checked, the on-hand queue will assume you have all vendor items when queuing crafts."] = "Se marcado, a fila na-mão assumirá que você possui todos os itens de vendedor quando enfileirar fabricações." -- Needs review
L["If checked, the profit percent (profit/sell price) will be shown next to the profit in the craft management window."] = "Se marcado, a porcentagem de lucro (lucro/preço de venda) será mostrado próximo ao lucro na Janela de Gerenciamento de Produção."
L["If checked, when Crafting scans a tradeskill for the first time (such as after you learn a new one), it will be enabled by default."] = "Se marcado, quando o Produção escanear uma habilidade pela primeira vez (logo após que você aprende uma nova) esta será habilitada por padrão." -- Needs review
L["If checked, you can change the price source for this mat by clicking on one of the checkboxes below. This source will be used to determine the price of this mat until you remove the override or change the source manually. If this setting is not checked, Crafting will automatically pick the cheapest source."] = "Se marcado, você pode alterar a origem do preço deste material clicando em uma das caixas abaixo. Esta origem será usada para determinar o preço deste material até que você remova o ultrapassar ou mude a origem manualmente. Se esta configuração não for selecionada, o Produção escolherá automaticamente a origem mais barata." -- Needs review
L["If enabled, any craft with a profit over this percent of the cost will be added to the craft queue when you use the \"Restock Queue\" button."] = "Se habilitado, qualquer item com um lucro acima desta porcentagem do custo será adicionado à fila de produção quando você usar o botão \"Reabastecer Fila\"."
L["If enabled, any craft with a profit over this value will be added to the craft queue when you use the \"Restock Queue\" button."] = "Se habilitado, qualquer item com lucro acima deste valor será adicionado à fila de produção quando você usar o botão \"Reabastecer Fila\"."
L["If enabled, any item with a seen count below this seen count filter value will not be added to the craft queue when using the \"Restock Queue\" button. You can overrride this filter for individual items in the \"Additional Item Settings\"."] = "Se habilitado, qualquer item com o número \"Vezes Visto\" abaixo do valor no filtro não será adicionado à fila quando você usar o botão \"Reabastecer Fila\". Você pode sobrescrever esta configuração para itens individuais na opção \"Configurações adicionais do Item\"."
L["If you use multiple accounts, you can use the steps below to synchronize your crafting costs between your accounts. This can be useful if you craft on one account and would like to post on another account using % of crafting cost as the threshold/fallback. Read the tooltips of the options below for instructions."] = "Se você utiliza diversas contas, você pode usar os passos abaixo para sincronizar seus custos de produção entre suas contas. Isto pode ser útil se você fabrica em uma conta e gostaria de postar em outra conta utilizando uma % do custo de produção como o limiar/reserva. Leia as dicas das opções abaixo para instruções."
L["Ignored crafting cost data from %s since he is not on your list. You will only see this message once per session for this player."] = "Dados de custo ignorados de %s já que não está na sua lista. Você apenas verá esta mensagem uma vez por sessão para este jogador." -- Needs review
L["Ignore Seen Count Filter"] = "Ignorar filtro \"Vezes Visto\""
L["Ignore Vendor Items"] = "Ignorar Itens de Vendedores" -- Needs review
L["In Bags"] = "Nas bolsas"
L["Include Crafts Already in a Group"] = "Incluir produtos que já estão em um grupo" -- Needs review
L["Include Items on AH"] = "Incluir Itens na CL" -- Needs review
L["Ink"] = "Tinta"
L["Ink of the Sea"] = "Tinta do Mar" -- Needs review
L["Inks"] = "Tintas" -- Needs review
L["Inscription crafts can be grouped in TradeSkillMaster_Crafting either by class or by the ink required to make them."] = "Itens de Escrivania podem ser agrupados no TSM_Crafting tanto por classe quanto pelas tintas que são necessárias para fazê-los."
L["Invalid item entered. You can either link the item into this box or type in the itemID from wowhead."] = "Item entrado inválido. Você pode vincular (link) o item nesta caixa ou digitar o itemID do wowhead." -- Needs review
L["Invalid money format entered, should be \"#g#s#c\", \"25g4s50c\" is 25 gold, 4 silver, 50 copper."] = "Formado de moeda inválido, deve ser \"#o#p#c#, \"25o4p50c# é 25 ouros, 4 pratas, 50 cobres." -- Needs review
L["Invalid Number"] = "Número Inválido" -- Needs review
L["Invalid target player \"%s\"."] = "Jogador alvo inválido \"%s\"." -- Needs review
L["Inventory Settings"] = "Configurações de Invetário."
L["Item Enhancements"] = "Aperfeiçoamento de Item" -- Needs review
L["Item Level"] = "Nível do Item" -- Needs review
L["Item Name"] = "Nome do Item" -- Needs review
L["Items will only be added to the queue if the number being added is greater than this number. This is useful if you don't want to bother with crafting singles for example."] = "Itens somente serão adicionados à fila se o número a ser adicionado for maior que este número. Isto é útil se você não quer se preocupar em produzir um único item, por exemplo."
L["ItemTracker"] = "ItemTracker" -- Needs review
L["Item Value"] = "Valor do Item" -- Needs review
L["Jadefire Ink"] = "Tinta Flamejade" -- Needs review
L["Leather"] = "Couro" -- Needs review
L["Level 1-35"] = "Nível 1-35" -- Needs review
L["Level 36-70"] = "Nível 36-70" -- Needs review
L["Level 71+"] = "Nível 71+" -- Needs review
L["Limit Vendor Item Price"] = "Limitar o Preço de Item do Vendedor" -- Needs review
L["Lion's Ink"] = "Tinta do Leão" -- Needs review
L["Manual Entry"] = "Entrada manual"
L["Mark as Unknown (\"----\")"] = "Marcar como Desconhecido (\"----\")" -- Needs review
L["Material Cost Options"] = "Opções do Custo de Material" -- Needs review
L["Materials"] = "Materiais"
L["Mat Price"] = "Preço do Material" -- Needs review
L["Maximum Price Per Vendor Item"] = "Preço Máximo de Item Por Vendedor" -- Needs review
L["Max Restock Quantity"] = "Quatindade máxima para reabastecimento "
L["Meta Gems"] = "Gema Meta" -- Needs review
L["Midnight Ink"] = "Tinta da Meia-noite" -- Needs review
L["Mill"] = "Triturar" -- Needs review
L["Milling"] = "Triturando Ervas" -- Needs review
L["Min Craft ilvl"] = "Invl Mínimo de Produção"
L["Min ilvl to craft:"] = "Invl Mínimo para Fabricar:" -- Needs review
L["Minimum Profit (in %)"] = "Lucro mínimo (em %)"
L["Minimum Profit (in gold)"] = "Lucro mínimo (em ouro)"
L["Minimum Profit Method"] = "Método de Lucro mínimo"
L["Min Restock Quantity"] = "Quantidade mínima para reabastecimento "
L["Misc Items"] = "Diversos" -- Needs review
L["Multiple of Other Item Cost"] = "Múltipo do Custo de outro item." -- Needs review
L["Name"] = "Nome"
L["Name of New Group to Add Item to:"] = "Nome do Novo Grupo para adicionar o item:"
L["Need"] = "Precisa"
L["New"] = "Novo"
L["<New Group>"] = "<Novo Grupo>" -- Needs review
L["<No Category>"] = "<Nenhuma Categoria>" -- Needs review
L["No crafts have been added for this profession. Crafts are automatically added when you click on the profession icon while logged onto a character which has that profession."] = "Nenhum item foi adicionado para essa profissão. Itens são automaticamente adicionados quando você clicar no ícone da profissão quando estiver logado em um personagem que tenha a profissão."
L["No Minimum"] = "Sem Mínimo"
L["Note: By default, Crafting will use the second cheapest value (herb or pigment cost) to calculate the cost of the pigment as this provides a slightly more accurate value."] = "Nota: Por padrão o Produção usará o segundo valor mais barato (custo da erva ou pigmento) para calcular o custo do pigmento já que isto fornece um valor mais acurado." -- Needs review
L["NOTE: Milling prices can be viewed / adjusted in the mat options for pigments. Click on the button below to go to the pigment options."] = "NOTA: Os preços para triturar podem ser vistos/ajustados nas opções de materiais dos pigmentos. Clique no botão abaixo para ir nas configurações do pigmento." -- Needs review
L["Number Owned"] = "Número possuído" -- Needs review
L["OK"] = "OK"
L["On-Hand Queue"] = "Fila Em-Mãos"
L["Only Included Enabled Crafts"] = "Incluir somente Produtos habilitados" -- Needs review
L["On the account that will be receiving the crafting cost data (ie the account that doesn't have the profession), list the characters that will be sending the crafting cost data below (ie the characters with the profession)."] = "Na conta que estará recebendo os dados de custo de produção (ex: a conta que não possui a profissão), liste os personagens que estarão enviando os dados de custo de produção abaixo (ex: os personagens com a profissão)."
L["Open Mat Options for Pigment"] = "Abrir opções de material por pigmento" -- Needs review
L["Open TradeSkillMaster_Crafting"] = "Abrir TradeSkillMaster_Crafting"
L["Options"] = "Opções" -- Needs review
L["Orange Gems"] = "Gemas Laranjas" -- Needs review
L["Other"] = "Outros" -- Needs review
L["Other Consumable"] = "Outros Consumíveis" -- Needs review
L["Other Item"] = "Outro Item" -- Needs review
L["Override Craft Sort Method"] = "Ultrapassar o Método de Classificação de Produto" -- Needs review
L["Override Craft Sort Order"] = "Ultrapassar a Ordem de Classificação de Produto" -- Needs review
L["Override Max Restock Quantity"] = "Sobrescrever quantidade máxima para reabastecimento"
L["Override Minimum Profit"] = "Sobrescrever Lucro Mínimo" -- Needs review
L["Override Min Restock Quantity"] = "Sobrescrever quantidade mínima para reabastecimento"
L["Override Price Source"] = "Ultrapassar Origem do Preço" -- Needs review
L["Percent and Gold Amount"] = "Porcentagem e Quantidade de ouro"
L["Percent of Cost"] = "Porcentagem do Custo"
L["Percent to subtract from buyout when calculating profits (5% will compensate for AH cut)."] = "Porcentagem a ser subtraída do arremate quando calcular os lucros (5% compensará a comissão da CL)"
L["per pigment"] = "por pigmento" -- Needs review
L["Place lower limit on ilvl to craft"] = "Colocar um limite mínimo no invl a ser fabricado" -- Needs review
L["Potion"] = "Poção" -- Needs review
L["Price:"] = "Preço:" -- Needs review
L["Price / Inventory Settings"] = "Definições de Preço / Inventário" -- Needs review
L["Price Multiplier"] = "Multiplicador do Preço" -- Needs review
L["Price Settings"] = "Configurações de Preço"
L["Price Source"] = "Origem do Preço" -- Needs review
L["Prismatic Gems"] = "Gemas Prismática" -- Needs review
L["Profession Page Settings"] = "Definições da Página de Profissão" -- Needs review
L["Profession-Specific Settings"] = "Configurações Específicas da Profissão" -- Needs review
L["Profiles"] = "Perfis"
L["Profit"] = "Lucro" -- Needs review
L["Profit Deduction"] = "Redução do Lucro" -- Needs review
L["Purple Gems"] = "Gemas Roxas" -- Needs review
L["# Queued:"] = "# Enfileirados:" -- Needs review
L["Queue Settings"] = "Definições de Fila" -- Needs review
L["Red Gems"] = "Gemas Vermelhas" -- Needs review
L["Reset Profile"] = "Resetar Perfil" -- Needs review
L["Reset the current profile back to its default values, in case your configuration is broken, or you simply want to start over."] = "Resetar o perfil atual para os valores padrões, para o caso de suas configurações estarem inoperantes, ou para simplesmente recomeçar." -- Needs review
L["Restock Queue"] = "Reabastecer Fila"
L["Restock Queue Overrides"] = "Ultrapassar Fila de Reabastecimento" -- Needs review
L["Restock Queue Settings"] = "Configurações de Reabastecer Fila"
L["Scopes"] = "Miras" -- Needs review
L["Scrolls"] = "Pergaminhos" -- Needs review
L["Seen Count"] = "Vezes Visto"
L["Seen Count Filter"] = "Filtro Vezes Vistos" -- Needs review
L["Seen Count Source"] = "Fonte para \"Vezes Visto\"" -- Needs review
L["Select an Auctioning group to add these crafts to."] = "Selecione um Grupo de Leilão para adicionar estes produtos." -- Needs review
L["Select the crafts you would like to add to Auctioning and use the settings / buttons below to do so."] = "Selecione os produtos que você gostaria de adicionar ao Leilão e use as configurações/botões abaixo para faze-lo." -- Needs review
L["Send Crafting Costs"] = "Enviar Custos de Produção"
L["Sending data to %s complete!"] = "Envio de dados para %s completo!" -- Needs review
L["Set Crafted Item Cost to Auctioning Fallback"] = "Definir o Custo de Produção do Item para a Reserva de Leilão"
L["Shield"] = "Escudo" -- Needs review
L["Shimmering Ink"] = "Tinta Cintilante" -- Needs review
L["Show Crafting Cost in Tooltip"] = "Mostar Custo de Produção na Dica de Interface" -- Needs review
L["Show Craft Management Window"] = "Mostrar a Janela de Gerenciamento de Produção"
L["Show Profit Percentages"] = "Mostrar Porcentagens de Lucro" -- Needs review
L["%s not queued! Min restock of %s is higher than max restock of %s"] = "%s não está na fila! O reabastecimento mínimo de %s é maior que o reabastecimento máximo de %s"
L["Sort Crafts By"] = "Classificar Produtos por" -- Needs review
L["Sort crafts in ascending order."] = "Classificar produtos em ordem crescente." -- Needs review
L["Sort crafts in descending order."] = "Classificar produtos em ordem decrescente." -- Needs review
L["Sort Order:"] = "Ordem de Classificação:" -- Needs review
L["Staff"] = "Cajado" -- Needs review
L["Status"] = "Estado" -- Needs review
L["Step 2 (on Crafting Account):"] = "Passo 2 (na Conta de Produção):"
L["Successfully got %s bytes of crafting cost data from %s!"] = "Recebeu com sucesso %s bytes de dados de custo de %s!" -- Needs review
L["The checkboxes in next to each craft determine enable / disable the craft being shown in the Craft Management Window."] = "As \"checkboxes\" próximas a cada item determinam se o item será exibido ou não na Janela de Gerenciamento de Produção."
L["The item you want to base this mat's price on. You can either link the item into this box or type in the itemID from wowhead."] = "O item o qual você quer basear o preço deste material. Você pode vincular (link) o item nesta caixa ou digitar o itemID do wowhead." -- Needs review
L["These options control the \"Restock Queue\" button in the craft management window. These settings can be overriden by profession or by item in the profession pages of the main TSM window."] = "Estas opções controlam o botão \"Reabastecer Fila\" na janela de gerenciamento de produção. Estas definições podem ser sobrepostas por profissão ou por item nas páginas de profissão da janela principal do TSM."
L["This is where TradeSkillMaster_Crafting will get material prices. AuctionDB is TradeSkillMaster's auction house data module. Alternatively, prices can be entered manually in the \"Materials\" pages."] = "De onde o TradeSkillMaster_Crafting  pegará o preço dos materiais. AuctionDB  é o módulo de casa de leilão do TradeSkillMaster's . Alternativamente, os preços podem definidos manualmente nas páginas dos \"Materiais\"." -- Needs review
L["This is where TradeSkillMaster_Crafting will get prices for crafted items. AuctionDB is TradeSkillMaster's auction house data module."] = "De onde o TradeSkillMaster_Crafting buscará os preços para itens produzidos. AuctionDB é o módulo de casa de leilão do TradeSkillMaster's ." -- Needs review
L["This item is already in the \"%s\" Auctioning group."] = "Este item já está adicionado ao grupo \"%s\"." -- Needs review
L["This item will always be queued (to the max restock quantity) regardless of price data."] = "Este item será enfileirado sempre (até a quantidade de reabastecimento máxima) independentemente dos dados de preço." -- Needs review
L["This item will not be queued by the \"Restock Queue\" ever."] = "Este item nunca será enfileirado ao usar o botão \"Reabastecer Fila\""
L["This item will only be added to the queue if the number being added is greater than or equal to this number. This is useful if you don't want to bother with crafting singles for example."] = "Este item somente será adicionado à fila se o número a ser adicionado for maior ou igual a este número. Isto é útil se você não quiser se preocupar em produzir um único item, por exemplo." -- Needs review
L["This setting determines how crafts are sorted in the craft group pages (NOT the Craft Management Window)."] = "Esta configuração determina como os itens serão organizados dentro das páginas de Grupos de Produção (Não dentro da Janela de Gerenciamento de Produção)"
L["This setting determines where seen count data is retreived from. The seen count data can be retreived from either Auctioneer or TradeSkillMaster's AuctionDB module."] = "Estas configurações determinam a fonte dos dados referentes ao número \"Vezes Visto\". Esta informação pode ser obtida tanto do Auctioneer quanto do módulo AuctionDB do TradeSkillMaster." -- Needs review
L["This will allow you to base the price of this item on the price of some other item times a multiplier. Be careful not to create circular dependencies (ie Item A is based on the cost of Item B and Item B is based on the price of Item A)!"] = "Permirirá que você baseie o preço deste item em um múltiplo de um outro item. Seja cuidadoso para não criar dependências circulares (ex. Item A é baseado no preço do item B e o item B é baseado no preço do item A)!" -- Needs review
L["This will determine how items with unknown profit are dealt with in the Craft Management Window. If you have the Auctioning module installed and an item is in an Auctioning group, the fallback for the item can be used as the market value of the crafted item (will show in light blue in the Craft Management Window)."] = "Isto irá determinar como os itens com lucro desconhecido são tratados na Janela de Gerenciamento de Produção. Se você possui o módulo de Leiloamento instalado e um item está num grupo de Leiloamento, a reserva para o item pode ser utilizada como valor de mercado do item fabricado (será exibido em azul claro na Janela de Gerenciamento de Produção)."
L["This will set the scale of the craft management window. Everything inside the window will be scaled by this percentage."] = "Isto configurará a escala da Janela de Gerenciamento de Produção. Tudo dentro da janela será dimensionado seguindo esta porcentagem."
L["Times Crafted"] = "Vezes Produzido" -- Needs review
L["Total"] = "Total" -- Needs review
L["TradeSkillMaster_AuctionDB"] = "TradeSkillMaster_AuctionDB" -- Needs review
L["TradeSkillMaster_Crafting can use TradeSkillMaster_ItemTracker or DataStore_Containers to provide data for a number of different places inside TradeSkillMaster_Crafting. Use the settings below to set this up."] = "O TradeSkillMaster_Crafting pode utilizar o TradeSkillMaster_ItemTracker ou o DataStore_Containers para fornecer dados para diversos lugares diferentes dentro do TradeSkillMaster_Crafting. Utilize as definições abaixo para configurar isto." -- Needs review
L["TradeSkillMaster_Crafting - Scanning..."] = "TradeSkillMaster_Crafting - Escaneando..." -- Needs review
L["Transmutes"] = "Transmutações" -- Needs review
L["Trinkets"] = "Berloque" -- Needs review
L["TSM_Auctioning Group to Add Item to:"] = "Grupo do TSM_Auctioning para adicionar o item:" -- Needs review
L["TSM_Crafting - Buy Vendor Items"] = "TSM_Crafting - Comprar Itens de Vendedor" -- Needs review
L["Type in the name of the player you want to send your crafting cost data to and hit the \"Send\" button. Remember to do step 1 on the character you're trying to send to first!"] = "Digite o nome do jogador para o qual deseja enviar seus dados de custo de produção e aperte o botão \"Enviar\". Lembre-se de fazer o passo 1 no personagem para o qual você está tentando enviar primeiro!"
L["Unknown Profit Queuing"] = "Enfileirar com Lucro Desconhecido" -- Needs review
L["Use auction house data from the addon you have selected in the Crafting options for the value of this mat."] = "Usar os dados da casa de leilão do addon que você selecionou nas opções de Produção como valor deste material." -- Needs review
L["User-Defined Price"] = "Preço definido pelo usuário" -- Needs review
L["Use the links on the left to select which page to show."] = "Use os links à esquerda para selecionar qual página mostrar." -- Needs review
L["Use the price of buying herbs to mill as the cost of this material."] = "Usar o preço de comprar ervas para triturar como o custo deste material." -- Needs review
L["Use the price that a vendor sells this item for as the cost of this material."] = "Usar o preço que um vendedor vende este item como o custo deste material." -- Needs review
L["Vendor"] = "Vendedor" -- Needs review
L["Vendor Trade"] = "Troca com Vendedor" -- Needs review
L["Vendor Trade (x%s)"] = "Troca com Vendedor (x%s)" -- Needs review
L["Warning: The min restock quantity must be lower than the max restock quantity."] = "Atenção: A quantidade de reabastecimento mínima deve ser menor que a quantidade de reabastecimento máxima." -- Needs review
L[ [=[Warning: Your default minimum restock quantity is higher than your maximum restock quantity! Visit the "Craft Management Window" section of the Crafting options to fix this!

You will get error messages printed out to chat if you try and perform a restock queue without fixing this.]=] ] = "Atenção: Seu reabastecimento mínimo é maior que o reabastecimento máximo! Vá até a seção \"Janela de Gerenciamento de Produção\" das opções de Produção para concertar isso!"
L["Weapon"] = "Arma" -- Needs review
L["Weapon - Main Hand"] = "Arma - Mão principal" -- Needs review
L["Weapon - One Hand"] = "Arma - Uma mão" -- Needs review
L["Weapon - Thrown"] = "Arma - Arremesso" -- Needs review
L["Weapon - Two Hand"] = "Armas - Duas mãos" -- Needs review
L["When you click on the \"Restock Queue\" button enough of each craft will be queued so that you have this maximum number on hand. For example, if you have 2 of item X on hand and you set this to 4, 2 more will be added to the craft queue."] = "Quando você clica no botão \"Fila de Reabastecimento\" serão enfileirados a quantidade suficiente de cada produto para que você tenha esse número máximo em mãos. Por exemplo, se você tem 2 do item X em mãos e configurou para 4, mais 2 serão adicionados à fila de produção." -- Needs review
L["When you double click on a craft in the top-left portion (queuing portion) of the craft management window, it will increment/decrement this many times."] = "Quando você dá um clique duplo em um produto na parte superior esquerda (parte da fila) da Janela de Gerenciamento de Produção, aumentará/diminuirá a quantidade."
L["When you use the \"Restock Queue\" button, it will ignore any items with a seen count below the seen count filter below. The seen count data can be retreived from either Auctioneer or TradeSkillMaster's AuctionDB module."] = "Quando você usa o botão \"Fila de Reabastecimento\" todos os itens com a quantidade de \"Vezes Visto\" menor que a abaixo serão ignorados. Essa informação pode ser obtida do Auctioneer ou do módulo AuctionDB do TSM."
L["Which group in TSM_Auctioning to add this item to."] = "Em qual grupo do TSM_Auctioning  adicionar este item." -- Needs review
L["Yellow Gems"] = "Gemas Amarelas" -- Needs review
L["You can change the active database profile, so you can have different settings for every character."] = "Você pode alterar o perfil da base de dados ativa para que você possa ter configurações diferente para cada personagem." -- Needs review
L["You can choose to specify a minimum profit amount (in gold or by percent of cost) for what crafts should be added to the craft queue."] = "Você pode escolher especificar um lucro mínimo (em ouro ou porcentagem do custo) para saber quais itens devem ser adicionados na Fila de Produção." -- Needs review
L["You can click on one of the rows of the scrolling table below to view or adjust how the price of a material is calculated."] = "Você pode clicar em uma das linhas da tabela rolante abaixo para visualizar ou ajustar como o preço de um material é calculado." -- Needs review
L["You can either add every craft to one group or make individual groups for each craft."] = "Você pode adicionar todos os produtos em um único grupo ou criar grupos individuais para cada um." -- Needs review
L["You can either create a new profile by entering a name in the editbox, or choose one of the already exisiting profiles."] = "Você pode criar um perfil novo escrevendo o nome na caixa de edição ou escolher um dos perfis já existentes." -- Needs review
L["You can select a category that group(s) will be added to or select \"<No Category>\" to not add the group(s) to a category."] = "Você pode selecionar a categoria em que os grupos serão adicionados ou selecionar \"<Sem Categoria>\" para não adicionar nenhuma categoria." -- Needs review
L["You must have your profession window open in order to use the craft queue. Click on the button below to open it."] = "Você precisa ter sua janela de profissão aberta para poder usar a Fila de Produção. Clique no botão abaixo para abri-la." -- Needs review
 