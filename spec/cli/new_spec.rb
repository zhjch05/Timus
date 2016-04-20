describe "timus new" do

  let :timus do
    Timus::CLI.new
  end

  before do
    setup_aruba
    timus.destination_root = Aruba.config.working_directory
  end

  it "should create timusOJ folder" do
    #run_simple("timus new")
    #timus.new
    #expect('timusOJ/').to be_an_existing_file
    timus.new
    expect(directory?("timusOJ")).to be true
  end

  it "should create custom folder" do
    #run_simple("timus new #{custom}")
    #timus.new "foobar"
    #expect("foobar/").to be_an_existing_file
    timus.new "foobar"
    expect(directory?("foobar")).to be true
  end
end
