RSpec.describe "user visits comedians" do
  it 'displays a list of comedians' do
    comedian_name = 'Kathy Griffin'
    comedian = Comedian.create(name: comedian_name, age: '55')

    visit('/comedians')

    expect(page).to have_content(comedian.name)
    expect(page).to have_content(comedian.age) 
  end 
end
