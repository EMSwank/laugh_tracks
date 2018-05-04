RSpec.describe "user visits comedians" do
  it 'displays a list of comedians' do
    comedian_name = 'Kathy Griffin'
    comedian = Comedian.create(name: comedian_name, age: '55')

    visit('/comedians')

    expect(page).to have_content(comedian.name)
    expect(page).to have_content(comedian.age)
  end

  it 'displays a list of comedians and specials' do
    comedian_name = 'Kathy Griffin'
    special_name = 'Live in Denver'
    comedian = Comedian.create(name: comedian_name, age: '55')
    special = Special.create(name: special_name, comedian_id: 5)

    visit('/comedians')

    expect(page).to have_content(special.name)
    expect(page).to have_content(special.comedian_id)
  end

end
