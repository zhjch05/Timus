describe "timus new" do
  before do
    setup_aruba
  end

  it "should create timusOJ folder" do
    run_simple("timus new")
    expect('timusOJ/').to be_an_existing_file
  end

  it "should create custom folder" do
    custom = "foobar"
    run_simple("timus new #{custom}")
    expect("#{custom}/").to be_an_existing_file
  end
end
