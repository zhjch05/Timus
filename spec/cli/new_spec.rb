describe "timus new" do

  let :timus do
    Timus::CLI.new
  end

  before do
    setup_aruba
    timus.destination_root = Aruba.config.working_directory
  end

  it "should create timusOJ folder" do
    timus.new
    expect(directory?("timusOJ")).to be true
  end

  it "should create custom folder" do
    timus.new "foobar"
    expect(directory?("foobar")).to be true
  end

  it "should create templates sub-folder" do
    timus.new
    expect(directory?("timusOJ/templates")).to be true
  end
end
